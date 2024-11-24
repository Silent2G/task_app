import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/common/presenter/interactor/i_secure_storage_interactor.dart';
import 'package:task_app/injection.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final ISecureStorageInteractor _storageInteractor;

  SplashCubit({
    ISecureStorageInteractor? storageInteractor,
  })  : _storageInteractor =
            storageInteractor ?? getIt<ISecureStorageInteractor>(),
        super(SplashState.initial());

  Future<void> init() async => _startSplashTimer();

  void _startSplashTimer() async {
    List<dynamic> results = await Future.wait([
      Future.delayed(
        const Duration(seconds: 2),
      ),
      _storageInteractor.isRememberUser(),
    ]);

    final isRemember = results[1] as bool;

    emit(
      state.copyWith(
        isLoaded: true,
        isRemeberUser: isRemember,
      ),
    );
  }
}
