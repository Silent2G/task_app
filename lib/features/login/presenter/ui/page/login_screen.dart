import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/features/login/presenter/state/login_cubit.dart';
import 'package:task_app/features/login/presenter/ui/widget/login_button.dart';
import 'package:task_app/features/login/presenter/ui/widget/login_text_filed.dart';
import 'package:task_app/features/login/presenter/ui/widget/remember_check_box.dart';
import 'package:task_app/router/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.isLoginSuccess) {
            GoRouter.of(context).pushReplacement(Routes.home);
          }
        },
        builder: (context, state) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              LoginTextField(
                label: 'User name',
                controller: _usernameController,
                error: state.usernameError,
              ),
              LoginTextField(
                label: 'Password',
                controller: _passwordController,
                error: state.passwordError,
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  RememberCheckBox(
                    isChecked: state.isRemeberMe,
                    onChanged: (value) {
                      context.read<LoginCubit>().onChanged(value);
                    },
                  ),
                  const Text('Remember Me'),
                ],
              ),
              const Spacer(),
              SafeArea(
                child: LoginButton(
                  text: "Login",
                  width: double.maxFinite,
                  onPressed: () {
                    context.read<LoginCubit>().validateCredentials(
                        _usernameController.text, _passwordController.text);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
