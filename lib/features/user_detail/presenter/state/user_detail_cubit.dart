import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';

part 'user_detail_cubit.freezed.dart';
part 'user_detail_state.dart';

class UserDetailCubit extends Cubit<UserDetailState> {
  UserDetailCubit({
    required UserEntity user,
  }) : super(UserDetailState.initial(user: user));

  void init() {}
}
