part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required StateStatus status,
    required List<UserEntity> users,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: StateStatus.loading(),
        users: [],
      );
}
