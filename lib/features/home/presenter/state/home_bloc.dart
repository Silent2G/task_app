import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/common/presenter/interactor/i_secure_storage_interactor.dart';
import 'package:task_app/common/presenter/ui/models/state_status.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';
import 'package:task_app/features/home/presenter/interactor/i_users_interactor.dart';
import 'package:task_app/injection.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IUsersInteractor _usersInteractor;
  final ISecureStorageInteractor _storageInteractor;

  HomeBloc({
    IUsersInteractor? userInteractor,
    ISecureStorageInteractor? storageInteractor,
  })  : _usersInteractor = userInteractor ?? getIt<IUsersInteractor>(),
        _storageInteractor =
            storageInteractor ?? getIt<ISecureStorageInteractor>(),
        super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.map(
          fetchUsers: (event) => _fetchUsers(emit),
        );
      },
    );
  }

  Future<void> _fetchUsers(Emitter<HomeState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));
    final authToken = await _storageInteractor.getToken(); // E.g. token usage

    final result = await _usersInteractor.getUsers(authToken: authToken);
    result.fold(
      (failure) {
        emit(state.copyWith(
          status: const StateStatus.failure(
              //  l.message
              "Something went wrong ..."), // this is dummy failure text =)
        ));
      },
      (users) {
        emit(
          state.copyWith(
            users: users,
            status: const StateStatus.success(),
          ),
        );
      },
    );
  }
}
