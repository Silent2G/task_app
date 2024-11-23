import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
  }) = _UserEntity;
}
