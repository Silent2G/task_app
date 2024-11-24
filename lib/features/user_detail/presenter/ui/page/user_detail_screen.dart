import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/user_detail/presenter/state/user_detail_cubit.dart';
import 'package:task_app/features/user_detail/presenter/ui/widget/item.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailCubit, UserDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('User Details'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Item(title: 'Name', value: state.user.name),
                  Item(title: 'Username', value: state.user.username),
                  Item(title: 'Email', value: state.user.email),
                  Item(title: 'Phone', value: state.user.phone),
                  Item(title: 'Website', value: state.user.website),
                  const SizedBox(height: 16),
                  Text(
                    'Address:',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${state.user.address.street}, ${state.user.address.suite}, ${state.user.address.city}, ${state.user.address.zipcode}',
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Company:',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(state.user.company.name),
                  const SizedBox(height: 4),
                  Text(state.user.company.catchPhrase),
                  const SizedBox(height: 4),
                  Text(state.user.company.bs),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
