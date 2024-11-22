part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required bool isLoaded,
  }) = _SplashState;

  factory SplashState.initial() => const SplashState(
        isLoaded: false,
      );
}
