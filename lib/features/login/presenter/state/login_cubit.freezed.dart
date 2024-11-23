// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  String? get usernameError => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;
  bool get isRemeberMe => throw _privateConstructorUsedError;
  bool get isLoginSuccess => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String? usernameError,
      String? passwordError,
      bool isRemeberMe,
      bool isLoginSuccess});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameError = freezed,
    Object? passwordError = freezed,
    Object? isRemeberMe = null,
    Object? isLoginSuccess = null,
  }) {
    return _then(_value.copyWith(
      usernameError: freezed == usernameError
          ? _value.usernameError
          : usernameError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      isRemeberMe: null == isRemeberMe
          ? _value.isRemeberMe
          : isRemeberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: null == isLoginSuccess
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? usernameError,
      String? passwordError,
      bool isRemeberMe,
      bool isLoginSuccess});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameError = freezed,
    Object? passwordError = freezed,
    Object? isRemeberMe = null,
    Object? isLoginSuccess = null,
  }) {
    return _then(_$LoginStateImpl(
      usernameError: freezed == usernameError
          ? _value.usernameError
          : usernameError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      isRemeberMe: null == isRemeberMe
          ? _value.isRemeberMe
          : isRemeberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: null == isLoginSuccess
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.usernameError,
      this.passwordError,
      this.isRemeberMe = false,
      this.isLoginSuccess = false});

  @override
  final String? usernameError;
  @override
  final String? passwordError;
  @override
  @JsonKey()
  final bool isRemeberMe;
  @override
  @JsonKey()
  final bool isLoginSuccess;

  @override
  String toString() {
    return 'LoginState(usernameError: $usernameError, passwordError: $passwordError, isRemeberMe: $isRemeberMe, isLoginSuccess: $isLoginSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.usernameError, usernameError) ||
                other.usernameError == usernameError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.isRemeberMe, isRemeberMe) ||
                other.isRemeberMe == isRemeberMe) &&
            (identical(other.isLoginSuccess, isLoginSuccess) ||
                other.isLoginSuccess == isLoginSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, usernameError, passwordError, isRemeberMe, isLoginSuccess);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final String? usernameError,
      final String? passwordError,
      final bool isRemeberMe,
      final bool isLoginSuccess}) = _$LoginStateImpl;

  @override
  String? get usernameError;
  @override
  String? get passwordError;
  @override
  bool get isRemeberMe;
  @override
  bool get isLoginSuccess;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
