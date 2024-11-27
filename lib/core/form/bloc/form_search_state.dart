part of 'form_search_bloc.dart';

class FormSearchState {
  List<String> filteredTextList;
  List<String>? list;

  FormSearchState._({required this.filteredTextList, this.list});

  factory FormSearchState.initial() => FormSearchState._(filteredTextList: []);

  FormSearchState copyWith({List<String>? filteredTextList, List<String>? list}) {
    return FormSearchState._(
      filteredTextList: filteredTextList ?? this.filteredTextList,
      list: list ?? this.list,
    );
  }
}
