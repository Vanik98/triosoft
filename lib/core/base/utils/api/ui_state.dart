import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
sealed class UiState<T> with _$UiState<T> {
  factory UiState.success([@Default(null) T? data]) = UiSuccess<T>;
  factory UiState.error(String message) = UiError;
}