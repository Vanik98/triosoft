import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_search_event.freezed.dart';

@freezed
sealed class FormSearchEvent {
  const factory FormSearchEvent.initial() = FormSearchInitialEvent;

  const factory FormSearchEvent.setList(List<String> list) = FormSearchSetListEvent;

  const factory FormSearchEvent.search(String text) = FormSearchSearchEvent;
}
