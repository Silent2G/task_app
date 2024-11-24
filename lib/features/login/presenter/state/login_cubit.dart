import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/common/presenter/interactor/i_secure_storage_interactor.dart';
import 'package:task_app/common/presenter/ui/utils/token_generator.dart';
import 'package:task_app/common/presenter/ui/utils/validators.dart';
import 'package:task_app/injection.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ISecureStorageInteractor _storageInteractor;

  LoginCubit({ISecureStorageInteractor? storageInteractor})
      : _storageInteractor =
            storageInteractor ?? getIt<ISecureStorageInteractor>(),
        super(
          LoginState.initial(),
        );

  Future<void> init() async {}

  void validateCredentials(
    String userName,
    String password,
  ) {
    final userNameError = Validators.isUserNameValid(userName);
    final passwordError = Validators.isPasswordValid(password);

    emit(state.copyWith(
      usernameError: userNameError,
      passwordError: passwordError,
    ));

    if (userNameError == null && passwordError == null) {
      emit(state.copyWith(isLoginSuccess: true));

      final token = TokenGenerator.generateToken(userName, password);
      _storageInteractor.saveToken(token);
    }
  }

  void onChanged(bool? value) {
    emit(state.copyWith(isRemeberMe: value ?? false));

    if (value ?? false) {
      _storageInteractor.saveRememberUser(value ?? false);
    } else {
      _storageInteractor.deleteRememberUser();
    }
  }
}
