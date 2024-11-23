part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    String? usernameError,
    String? passwordError,
    @Default(false) bool isRemeberMe,
    @Default(false) bool isLoginSuccess,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        usernameError: null,
        passwordError: null,
      );
}
