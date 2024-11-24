import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/common/presenter/ui/components/animated/loading_component.dart';
import 'package:task_app/core/mixin/toast_mixin.dart';
import 'package:task_app/features/home/presenter/state/home_cubit.dart';
import 'package:task_app/features/home/presenter/ui/widget/failure_toast_message.dart';
import 'package:task_app/features/home/presenter/ui/widget/user_item.dart';
import 'package:task_app/router/routes.dart';

class HomeScreen extends StatelessWidget with ToastMixin {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        state.status.mapOrNull(
          failure: (value) =>
              showToast(context: context, body: const FailureToastMessage()),
        );
      },
      builder: (context, state) {
        return state.status.maybeMap(
          success: (value) => Scaffold(
            appBar: AppBar(title: const Text('User List')),
            body: RefreshIndicator(
              onRefresh: () => context.read<HomeCubit>().downloadUsers(),
              child: ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  final user = state.users[index];
                  return UserItem(
                    userEntiy: user,
                    onTap: () => GoRouter.of(context).push(
                      Routes.userDetail,
                      extra: user.toJson(),
                    ),
                  );
                },
              ),
            ),
          ),
          orElse: () => const Scaffold(
            body: Center(
              child: LoadingComponent(
                color: Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}
