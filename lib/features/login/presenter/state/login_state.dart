part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String username,
    required String password,
    required bool isRemeberMe,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        username: '',
        password: '',
        isRemeberMe: false,
      );
}
