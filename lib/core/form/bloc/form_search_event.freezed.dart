// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, List<String> list) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, List<String> list)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, List<String> list)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormSearchInitialEvent value) initial,
    required TResult Function(FormSearchSearchEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormSearchInitialEvent value)? initial,
    TResult? Function(FormSearchSearchEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormSearchInitialEvent value)? initial,
    TResult Function(FormSearchSearchEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSearchEventCopyWith<$Res> {
  factory $FormSearchEventCopyWith(
          FormSearchEvent value, $Res Function(FormSearchEvent) then) =
      _$FormSearchEventCopyWithImpl<$Res, FormSearchEvent>;
}

/// @nodoc
class _$FormSearchEventCopyWithImpl<$Res, $Val extends FormSearchEvent>
    implements $FormSearchEventCopyWith<$Res> {
  _$FormSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormSearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FormSearchInitialEventImplCopyWith<$Res> {
  factory _$$FormSearchInitialEventImplCopyWith(
          _$FormSearchInitialEventImpl value,
          $Res Function(_$FormSearchInitialEventImpl) then) =
      __$$FormSearchInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSearchInitialEventImplCopyWithImpl<$Res>
    extends _$FormSearchEventCopyWithImpl<$Res, _$FormSearchInitialEventImpl>
    implements _$$FormSearchInitialEventImplCopyWith<$Res> {
  __$$FormSearchInitialEventImplCopyWithImpl(
      _$FormSearchInitialEventImpl _value,
      $Res Function(_$FormSearchInitialEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormSearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormSearchInitialEventImpl implements FormSearchInitialEvent {
  const _$FormSearchInitialEventImpl();

  @override
  String toString() {
    return 'FormSearchEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSearchInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, List<String> list) search,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, List<String> list)? search,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, List<String> list)? search,
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
    required TResult Function(FormSearchInitialEvent value) initial,
    required TResult Function(FormSearchSearchEvent value) search,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormSearchInitialEvent value)? initial,
    TResult? Function(FormSearchSearchEvent value)? search,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormSearchInitialEvent value)? initial,
    TResult Function(FormSearchSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormSearchInitialEvent implements FormSearchEvent {
  const factory FormSearchInitialEvent() = _$FormSearchInitialEventImpl;
}

/// @nodoc
abstract class _$$FormSearchSearchEventImplCopyWith<$Res> {
  factory _$$FormSearchSearchEventImplCopyWith(
          _$FormSearchSearchEventImpl value,
          $Res Function(_$FormSearchSearchEventImpl) then) =
      __$$FormSearchSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, List<String> list});
}

/// @nodoc
class __$$FormSearchSearchEventImplCopyWithImpl<$Res>
    extends _$FormSearchEventCopyWithImpl<$Res, _$FormSearchSearchEventImpl>
    implements _$$FormSearchSearchEventImplCopyWith<$Res> {
  __$$FormSearchSearchEventImplCopyWithImpl(_$FormSearchSearchEventImpl _value,
      $Res Function(_$FormSearchSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? list = null,
  }) {
    return _then(_$FormSearchSearchEventImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FormSearchSearchEventImpl implements FormSearchSearchEvent {
  const _$FormSearchSearchEventImpl(this.text, final List<String> list)
      : _list = list;

  @override
  final String text;
  final List<String> _list;
  @override
  List<String> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'FormSearchEvent.search(text: $text, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSearchSearchEventImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_list));

  /// Create a copy of FormSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSearchSearchEventImplCopyWith<_$FormSearchSearchEventImpl>
      get copyWith => __$$FormSearchSearchEventImplCopyWithImpl<
          _$FormSearchSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text, List<String> list) search,
  }) {
    return search(text, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text, List<String> list)? search,
  }) {
    return search?.call(text, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text, List<String> list)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormSearchInitialEvent value) initial,
    required TResult Function(FormSearchSearchEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormSearchInitialEvent value)? initial,
    TResult? Function(FormSearchSearchEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormSearchInitialEvent value)? initial,
    TResult Function(FormSearchSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class FormSearchSearchEvent implements FormSearchEvent {
  const factory FormSearchSearchEvent(
      final String text, final List<String> list) = _$FormSearchSearchEventImpl;

  String get text;
  List<String> get list;

  /// Create a copy of FormSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormSearchSearchEventImplCopyWith<_$FormSearchSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
