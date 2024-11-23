import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/common/presenter/ui/models/state_status.dart';
import 'package:task_app/features/home/presenter/state/home_cubit.dart';
import 'package:task_app/features/home/presenter/ui/widget/user_item.dart';
import 'package:task_app/router/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async => context.read<HomeCubit>().downloadUsers(),
            child: ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index];
                return UserItem(
                    userEntiy: user,
                    onTap: () => GoRouter.of(context)
                        .pushReplacement(Routes.userDetail));
              },
            ),
          );
        },
      ),
    );
  }
}
