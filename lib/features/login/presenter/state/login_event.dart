part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.validateCredentials(
      String username, String password) = _ValidateCredentials;
  const factory LoginEvent.toggleRememberMe(bool? value) = _ToggleRememberMe;
}
