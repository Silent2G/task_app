// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateStatusCopyWith<$Res> {
  factory $StateStatusCopyWith(
          StateStatus value, $Res Function(StateStatus) then) =
      _$StateStatusCopyWithImpl<$Res, StateStatus>;
}

/// @nodoc
class _$StateStatusCopyWithImpl<$Res, $Val extends StateStatus>
    implements $StateStatusCopyWith<$Res> {
  _$StateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StateStatusLoadingImplCopyWith<$Res> {
  factory _$$StateStatusLoadingImplCopyWith(_$StateStatusLoadingImpl value,
          $Res Function(_$StateStatusLoadingImpl) then) =
      __$$StateStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusLoadingImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusLoadingImpl>
    implements _$$StateStatusLoadingImplCopyWith<$Res> {
  __$$StateStatusLoadingImplCopyWithImpl(_$StateStatusLoadingImpl _value,
      $Res Function(_$StateStatusLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StateStatusLoadingImpl implements _StateStatusLoading {
  const _$StateStatusLoadingImpl();

  @override
  String toString() {
    return 'StateStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StateStatusLoading implements StateStatus {
  const factory _StateStatusLoading() = _$StateStatusLoadingImpl;
}

/// @nodoc
abstract class _$$StateStatusEmptyImplCopyWith<$Res> {
  factory _$$StateStatusEmptyImplCopyWith(_$StateStatusEmptyImpl value,
          $Res Function(_$StateStatusEmptyImpl) then) =
      __$$StateStatusEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusEmptyImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusEmptyImpl>
    implements _$$StateStatusEmptyImplCopyWith<$Res> {
  __$$StateStatusEmptyImplCopyWithImpl(_$StateStatusEmptyImpl _value,
      $Res Function(_$StateStatusEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StateStatusEmptyImpl implements _StateStatusEmpty {
  const _$StateStatusEmptyImpl();

  @override
  String toString() {
    return 'StateStatus.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _StateStatusEmpty implements StateStatus {
  const factory _StateStatusEmpty() = _$StateStatusEmptyImpl;
}

/// @nodoc
abstract class _$$StateStatusFailureImplCopyWith<$Res> {
  factory _$$StateStatusFailureImplCopyWith(_$StateStatusFailureImpl value,
          $Res Function(_$StateStatusFailureImpl) then) =
      __$$StateStatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$StateStatusFailureImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusFailureImpl>
    implements _$$StateStatusFailureImplCopyWith<$Res> {
  __$$StateStatusFailureImplCopyWithImpl(_$StateStatusFailureImpl _value,
      $Res Function(_$StateStatusFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$StateStatusFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateStatusFailureImpl implements _StateStatusFailure {
  const _$StateStatusFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'StateStatus.failure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateStatusFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateStatusFailureImplCopyWith<_$StateStatusFailureImpl> get copyWith =>
      __$$StateStatusFailureImplCopyWithImpl<_$StateStatusFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) {
    return failure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) {
    return failure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _StateStatusFailure implements StateStatus {
  const factory _StateStatusFailure(final String msg) =
      _$StateStatusFailureImpl;

  String get msg;

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateStatusFailureImplCopyWith<_$StateStatusFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateStatusBlockedFailureImplCopyWith<$Res> {
  factory _$$StateStatusBlockedFailureImplCopyWith(
          _$StateStatusBlockedFailureImpl value,
          $Res Function(_$StateStatusBlockedFailureImpl) then) =
      __$$StateStatusBlockedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int seconds});
}

/// @nodoc
class __$$StateStatusBlockedFailureImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusBlockedFailureImpl>
    implements _$$StateStatusBlockedFailureImplCopyWith<$Res> {
  __$$StateStatusBlockedFailureImplCopyWithImpl(
      _$StateStatusBlockedFailureImpl _value,
      $Res Function(_$StateStatusBlockedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
  }) {
    return _then(_$StateStatusBlockedFailureImpl(
      null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StateStatusBlockedFailureImpl implements _StateStatusBlockedFailure {
  const _$StateStatusBlockedFailureImpl(this.seconds);

  @override
  final int seconds;

  @override
  String toString() {
    return 'StateStatus.blockedFailure(seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateStatusBlockedFailureImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seconds);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateStatusBlockedFailureImplCopyWith<_$StateStatusBlockedFailureImpl>
      get copyWith => __$$StateStatusBlockedFailureImplCopyWithImpl<
          _$StateStatusBlockedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) {
    return blockedFailure(seconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) {
    return blockedFailure?.call(seconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (blockedFailure != null) {
      return blockedFailure(seconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) {
    return blockedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) {
    return blockedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (blockedFailure != null) {
      return blockedFailure(this);
    }
    return orElse();
  }
}

abstract class _StateStatusBlockedFailure implements StateStatus {
  const factory _StateStatusBlockedFailure(final int seconds) =
      _$StateStatusBlockedFailureImpl;

  int get seconds;

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateStatusBlockedFailureImplCopyWith<_$StateStatusBlockedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateStatusServerFailureImplCopyWith<$Res> {
  factory _$$StateStatusServerFailureImplCopyWith(
          _$StateStatusServerFailureImpl value,
          $Res Function(_$StateStatusServerFailureImpl) then) =
      __$$StateStatusServerFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusServerFailureImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusServerFailureImpl>
    implements _$$StateStatusServerFailureImplCopyWith<$Res> {
  __$$StateStatusServerFailureImplCopyWithImpl(
      _$StateStatusServerFailureImpl _value,
      $Res Function(_$StateStatusServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StateStatusServerFailureImpl implements _StateStatusServerFailure {
  const _$StateStatusServerFailureImpl();

  @override
  String toString() {
    return 'StateStatus.serverFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateStatusServerFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _StateStatusServerFailure implements StateStatus {
  const factory _StateStatusServerFailure() = _$StateStatusServerFailureImpl;
}

/// @nodoc
abstract class _$$StateStatusNetworkFailureImplCopyWith<$Res> {
  factory _$$StateStatusNetworkFailureImplCopyWith(
          _$StateStatusNetworkFailureImpl value,
          $Res Function(_$StateStatusNetworkFailureImpl) then) =
      __$$StateStatusNetworkFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusNetworkFailureImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusNetworkFailureImpl>
    implements _$$StateStatusNetworkFailureImplCopyWith<$Res> {
  __$$StateStatusNetworkFailureImplCopyWithImpl(
      _$StateStatusNetworkFailureImpl _value,
      $Res Function(_$StateStatusNetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StateStatusNetworkFailureImpl implements _StateStatusNetworkFailure {
  const _$StateStatusNetworkFailureImpl();

  @override
  String toString() {
    return 'StateStatus.networkFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateStatusNetworkFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _StateStatusNetworkFailure implements StateStatus {
  const factory _StateStatusNetworkFailure() = _$StateStatusNetworkFailureImpl;
}

/// @nodoc
abstract class _$$StateStatusSuccessImplCopyWith<$Res> {
  factory _$$StateStatusSuccessImplCopyWith(_$StateStatusSuccessImpl value,
          $Res Function(_$StateStatusSuccessImpl) then) =
      __$$StateStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusSuccessImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusSuccessImpl>
    implements _$$StateStatusSuccessImplCopyWith<$Res> {
  __$$StateStatusSuccessImplCopyWithImpl(_$StateStatusSuccessImpl _value,
      $Res Function(_$StateStatusSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of StateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StateStatusSuccessImpl implements _StateStatusSuccess {
  const _$StateStatusSuccessImpl();

  @override
  String toString() {
    return 'StateStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String msg) failure,
    required TResult Function(int seconds) blockedFailure,
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String msg)? failure,
    TResult? Function(int seconds)? blockedFailure,
    TResult? Function()? serverFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String msg)? failure,
    TResult Function(int seconds)? blockedFailure,
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateStatusLoading value) loading,
    required TResult Function(_StateStatusEmpty value) empty,
    required TResult Function(_StateStatusFailure value) failure,
    required TResult Function(_StateStatusBlockedFailure value) blockedFailure,
    required TResult Function(_StateStatusServerFailure value) serverFailure,
    required TResult Function(_StateStatusNetworkFailure value) networkFailure,
    required TResult Function(_StateStatusSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateStatusLoading value)? loading,
    TResult? Function(_StateStatusEmpty value)? empty,
    TResult? Function(_StateStatusFailure value)? failure,
    TResult? Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult? Function(_StateStatusServerFailure value)? serverFailure,
    TResult? Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult? Function(_StateStatusSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateStatusLoading value)? loading,
    TResult Function(_StateStatusEmpty value)? empty,
    TResult Function(_StateStatusFailure value)? failure,
    TResult Function(_StateStatusBlockedFailure value)? blockedFailure,
    TResult Function(_StateStatusServerFailure value)? serverFailure,
    TResult Function(_StateStatusNetworkFailure value)? networkFailure,
    TResult Function(_StateStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StateStatusSuccess implements StateStatus {
  const factory _StateStatusSuccess() = _$StateStatusSuccessImpl;
}
