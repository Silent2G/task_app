import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.initial());

  Future<void> init() async => _startSplashTimer();

  void _startSplashTimer() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(isLoaded: true));
  }
}
