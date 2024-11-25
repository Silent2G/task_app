part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required bool isLoaded,
    required bool isRemeberUser,
  }) = _SplashState;

  factory SplashState.initial() => const SplashState(
        isLoaded: false,
        isRemeberUser: false,
      );
}
