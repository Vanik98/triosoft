part of 'form_search_bloc.dart';

class FormSearchState {
  List<String>? filteredTextList;

  FormSearchState._({this.filteredTextList});

  factory FormSearchState.initial() => FormSearchState._();

  FormSearchState copyWith({List<String>? filteredTextList}) {
    return FormSearchState._(
      filteredTextList: filteredTextList ?? this.filteredTextList,
    );
  }
}
