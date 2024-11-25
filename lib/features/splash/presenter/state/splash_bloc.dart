import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/common/presenter/interactor/i_secure_storage_interactor.dart';
import 'package:task_app/injection.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ISecureStorageInteractor _storageInteractor;

  SplashBloc({
    ISecureStorageInteractor? storageInteractor,
  })  : _storageInteractor =
            storageInteractor ?? getIt<ISecureStorageInteractor>(),
        super(SplashState.initial()) {
    on<SplashEvent>((event, emit) async {
      await event.map(
        started: (event) => _startSplashTimer(emit),
      );
    });
  }

  Future<void> _startSplashTimer(Emitter<SplashState> emit) async {
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
