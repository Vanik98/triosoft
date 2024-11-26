// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AddUserRequest addUserRequest) registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AddUserRequest addUserRequest)? registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AddUserRequest addUserRequest)? registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventInitialEvent value) initial,
    required TResult Function(LoginEventRegisterUserEvent value) registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventInitialEvent value)? initial,
    TResult? Function(LoginEventRegisterUserEvent value)? registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventInitialEvent value)? initial,
    TResult Function(LoginEventRegisterUserEvent value)? registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginEventInitialEventImplCopyWith<$Res> {
  factory _$$LoginEventInitialEventImplCopyWith(
          _$LoginEventInitialEventImpl value,
          $Res Function(_$LoginEventInitialEventImpl) then) =
      __$$LoginEventInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventInitialEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventInitialEventImpl>
    implements _$$LoginEventInitialEventImplCopyWith<$Res> {
  __$$LoginEventInitialEventImplCopyWithImpl(
      _$LoginEventInitialEventImpl _value,
      $Res Function(_$LoginEventInitialEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginEventInitialEventImpl implements LoginEventInitialEvent {
  const _$LoginEventInitialEventImpl();

  @override
  String toString() {
    return 'LoginEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AddUserRequest addUserRequest) registerUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AddUserRequest addUserRequest)? registerUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AddUserRequest addUserRequest)? registerUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventInitialEvent value) initial,
    required TResult Function(LoginEventRegisterUserEvent value) registerUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventInitialEvent value)? initial,
    TResult? Function(LoginEventRegisterUserEvent value)? registerUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventInitialEvent value)? initial,
    TResult Function(LoginEventRegisterUserEvent value)? registerUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginEventInitialEvent implements LoginEvent {
  const factory LoginEventInitialEvent() = _$LoginEventInitialEventImpl;
}

/// @nodoc
abstract class _$$LoginEventRegisterUserEventImplCopyWith<$Res> {
  factory _$$LoginEventRegisterUserEventImplCopyWith(
          _$LoginEventRegisterUserEventImpl value,
          $Res Function(_$LoginEventRegisterUserEventImpl) then) =
      __$$LoginEventRegisterUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddUserRequest addUserRequest});
}

/// @nodoc
class __$$LoginEventRegisterUserEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventRegisterUserEventImpl>
    implements _$$LoginEventRegisterUserEventImplCopyWith<$Res> {
  __$$LoginEventRegisterUserEventImplCopyWithImpl(
      _$LoginEventRegisterUserEventImpl _value,
      $Res Function(_$LoginEventRegisterUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addUserRequest = null,
  }) {
    return _then(_$LoginEventRegisterUserEventImpl(
      null == addUserRequest
          ? _value.addUserRequest
          : addUserRequest // ignore: cast_nullable_to_non_nullable
              as AddUserRequest,
    ));
  }
}

/// @nodoc

class _$LoginEventRegisterUserEventImpl implements LoginEventRegisterUserEvent {
  const _$LoginEventRegisterUserEventImpl(this.addUserRequest);

  @override
  final AddUserRequest addUserRequest;

  @override
  String toString() {
    return 'LoginEvent.registerUser(addUserRequest: $addUserRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventRegisterUserEventImpl &&
            (identical(other.addUserRequest, addUserRequest) ||
                other.addUserRequest == addUserRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addUserRequest);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventRegisterUserEventImplCopyWith<_$LoginEventRegisterUserEventImpl>
      get copyWith => __$$LoginEventRegisterUserEventImplCopyWithImpl<
          _$LoginEventRegisterUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AddUserRequest addUserRequest) registerUser,
  }) {
    return registerUser(addUserRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AddUserRequest addUserRequest)? registerUser,
  }) {
    return registerUser?.call(addUserRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AddUserRequest addUserRequest)? registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(addUserRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventInitialEvent value) initial,
    required TResult Function(LoginEventRegisterUserEvent value) registerUser,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventInitialEvent value)? initial,
    TResult? Function(LoginEventRegisterUserEvent value)? registerUser,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventInitialEvent value)? initial,
    TResult Function(LoginEventRegisterUserEvent value)? registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class LoginEventRegisterUserEvent implements LoginEvent {
  const factory LoginEventRegisterUserEvent(
      final AddUserRequest addUserRequest) = _$LoginEventRegisterUserEventImpl;

  AddUserRequest get addUserRequest;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventRegisterUserEventImplCopyWith<_$LoginEventRegisterUserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
