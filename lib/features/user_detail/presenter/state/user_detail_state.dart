part of 'user_detail_bloc.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState({
    required UserEntity user,
  }) = _UserDetailState;

  factory UserDetailState.initial({required UserEntity user}) =>
      UserDetailState(user: user);
}
