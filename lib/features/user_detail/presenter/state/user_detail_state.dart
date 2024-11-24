part of 'user_detail_cubit.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState({
    required UserEntity user,
  }) = _UserDetailState;

  factory UserDetailState.initial({
    required UserEntity user,
  }) =>
      UserDetailState(
        user: user,
      );
}
