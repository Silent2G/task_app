import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/common/presenter/interactor/i_secure_storage_interactor.dart';
import 'package:task_app/common/presenter/ui/utils/token_generator.dart';
import 'package:task_app/common/presenter/ui/utils/validators.dart';
import 'package:task_app/injection.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ISecureStorageInteractor _storageInteractor;

  LoginBloc({ISecureStorageInteractor? storageInteractor})
      : _storageInteractor =
            storageInteractor ?? getIt<ISecureStorageInteractor>(),
        super(LoginState.initial()) {
    on<LoginEvent>((event, emit) {
      event.map(
        validateCredentials: (event) =>
            _validateCredentials(event.username, event.password, emit),
        toggleRememberMe: (event) => _toggleRememberMe(event.value, emit),
      );
    });
  }

  Future<void> _validateCredentials(
      String username, String password, Emitter<LoginState> emit) async {
    final userNameError = Validators.isUserNameValid(username);
    final passwordError = Validators.isPasswordValid(password);

    emit(state.copyWith(
      usernameError: userNameError,
      passwordError: passwordError,
    ));

    if (userNameError == null && passwordError == null) {
      emit(state.copyWith(isLoginSuccess: true));

      final token = TokenGenerator.generateToken(username, password);
      await _storageInteractor.saveToken(token);
    }
  }

  void _toggleRememberMe(bool? value, Emitter<LoginState> emit) {
    emit(state.copyWith(isRemeberMe: value ?? false));

    if (value ?? false) {
      _storageInteractor.saveRememberUser(value ?? false);
    } else {
      _storageInteractor.deleteRememberUser();
    }
  }
}
