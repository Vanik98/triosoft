// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LaunchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsRegisteredUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsRegisteredUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsRegisteredUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchEventCheckIsRegisteredUserEvent value)
        checkIsRegisteredUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchEventCheckIsRegisteredUserEvent value)?
        checkIsRegisteredUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchEventCheckIsRegisteredUserEvent value)?
        checkIsRegisteredUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchEventCopyWith<$Res> {
  factory $LaunchEventCopyWith(
          LaunchEvent value, $Res Function(LaunchEvent) then) =
      _$LaunchEventCopyWithImpl<$Res, LaunchEvent>;
}

/// @nodoc
class _$LaunchEventCopyWithImpl<$Res, $Val extends LaunchEvent>
    implements $LaunchEventCopyWith<$Res> {
  _$LaunchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaunchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LaunchEventCheckIsRegisteredUserEventImplCopyWith<$Res> {
  factory _$$LaunchEventCheckIsRegisteredUserEventImplCopyWith(
          _$LaunchEventCheckIsRegisteredUserEventImpl value,
          $Res Function(_$LaunchEventCheckIsRegisteredUserEventImpl) then) =
      __$$LaunchEventCheckIsRegisteredUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaunchEventCheckIsRegisteredUserEventImplCopyWithImpl<$Res>
    extends _$LaunchEventCopyWithImpl<$Res,
        _$LaunchEventCheckIsRegisteredUserEventImpl>
    implements _$$LaunchEventCheckIsRegisteredUserEventImplCopyWith<$Res> {
  __$$LaunchEventCheckIsRegisteredUserEventImplCopyWithImpl(
      _$LaunchEventCheckIsRegisteredUserEventImpl _value,
      $Res Function(_$LaunchEventCheckIsRegisteredUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaunchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LaunchEventCheckIsRegisteredUserEventImpl
    implements LaunchEventCheckIsRegisteredUserEvent {
  const _$LaunchEventCheckIsRegisteredUserEventImpl();

  @override
  String toString() {
    return 'LaunchEvent.checkIsRegisteredUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchEventCheckIsRegisteredUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIsRegisteredUser,
  }) {
    return checkIsRegisteredUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIsRegisteredUser,
  }) {
    return checkIsRegisteredUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIsRegisteredUser,
    required TResult orElse(),
  }) {
    if (checkIsRegisteredUser != null) {
      return checkIsRegisteredUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchEventCheckIsRegisteredUserEvent value)
        checkIsRegisteredUser,
  }) {
    return checkIsRegisteredUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchEventCheckIsRegisteredUserEvent value)?
        checkIsRegisteredUser,
  }) {
    return checkIsRegisteredUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchEventCheckIsRegisteredUserEvent value)?
        checkIsRegisteredUser,
    required TResult orElse(),
  }) {
    if (checkIsRegisteredUser != null) {
      return checkIsRegisteredUser(this);
    }
    return orElse();
  }
}

abstract class LaunchEventCheckIsRegisteredUserEvent implements LaunchEvent {
  const factory LaunchEventCheckIsRegisteredUserEvent() =
      _$LaunchEventCheckIsRegisteredUserEventImpl;
}
