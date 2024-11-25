import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/features/home/domain/entity/user_entity.dart';

part 'user_detail_bloc.freezed.dart';
part 'user_detail_event.dart';
part 'user_detail_state.dart';

class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  UserDetailBloc({
    required UserEntity user,
  }) : super(UserDetailState.initial(user: user)) {
    on<UserDetailEvent>((event, emit) {
      event.map(
        initialize: (_) => _initialize(emit),
      );
    });
  }

  void _initialize(Emitter<UserDetailState> emit) {}
}
