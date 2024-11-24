import 'package:async/async.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/common/domain/failure/i_failure.dart';
import 'package:task_app/common/presenter/interactor/i_secure_storage_interactor.dart';
import 'package:task_app/common/presenter/ui/models/state_status.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';
import 'package:task_app/features/home/presenter/interactor/i_users_interactor.dart';
import 'package:task_app/injection.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final IUsersInteractor _usersInteractor;
  final ISecureStorageInteractor _storageInteractor;

  CancelableOperation<Either<IFailure, List<UserEntity>>>? _cancelableOperation;

  HomeCubit({
    IUsersInteractor? userInteractor,
    ISecureStorageInteractor? storageInteractor,
  })  : _usersInteractor = userInteractor ?? getIt<IUsersInteractor>(),
        _storageInteractor =
            storageInteractor ?? getIt<ISecureStorageInteractor>(),
        super(HomeState.initial());

  Future<void> init() async => downloadUsers();

  Future<void> downloadUsers() async {
    emit(state.copyWith(status: const StateStatus.loading()));
    final authToken = await _storageInteractor.getToken(); // E.g. token usage

    _cancelableOperation?.cancel();
    _cancelableOperation = CancelableOperation.fromFuture(
        _usersInteractor.getUsers(authToken: authToken));
    _cancelableOperation?.then(
      (value) => value.fold(
        (l) {
          emit(
            state.copyWith(
              status: const StateStatus.failure(
                  //  l.message
                  "Something went wrong ..."), // this is dummy failure text =)
            ),
          );
        },
        (r) {
          emit(state.copyWith(users: r, status: const StateStatus.success()));
        },
      ),
    );
  }

  @override
  Future<void> close() {
    _cancelableOperation?.cancel();
    return super.close();
  }
}
