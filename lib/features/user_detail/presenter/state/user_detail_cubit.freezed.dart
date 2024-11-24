// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailState {
  UserEntity get user => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailStateCopyWith<UserDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailStateCopyWith<$Res> {
  factory $UserDetailStateCopyWith(
          UserDetailState value, $Res Function(UserDetailState) then) =
      _$UserDetailStateCopyWithImpl<$Res, UserDetailState>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class _$UserDetailStateCopyWithImpl<$Res, $Val extends UserDetailState>
    implements $UserDetailStateCopyWith<$Res> {
  _$UserDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailStateImplCopyWith<$Res>
    implements $UserDetailStateCopyWith<$Res> {
  factory _$$UserDetailStateImplCopyWith(_$UserDetailStateImpl value,
          $Res Function(_$UserDetailStateImpl) then) =
      __$$UserDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$UserDetailStateImplCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res, _$UserDetailStateImpl>
    implements _$$UserDetailStateImplCopyWith<$Res> {
  __$$UserDetailStateImplCopyWithImpl(
      _$UserDetailStateImpl _value, $Res Function(_$UserDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserDetailStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$UserDetailStateImpl implements _UserDetailState {
  const _$UserDetailStateImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'UserDetailState(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailStateImplCopyWith<_$UserDetailStateImpl> get copyWith =>
      __$$UserDetailStateImplCopyWithImpl<_$UserDetailStateImpl>(
          this, _$identity);
}

abstract class _UserDetailState implements UserDetailState {
  const factory _UserDetailState({required final UserEntity user}) =
      _$UserDetailStateImpl;

  @override
  UserEntity get user;

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailStateImplCopyWith<_$UserDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
