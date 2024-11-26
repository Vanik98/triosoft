import 'package:flutter_bloc/flutter_bloc.dart';

import 'form_search_event.dart';

part 'form_search_state.dart';

class FormSearchBloc extends Bloc<FormSearchEvent, FormSearchState> {
  FormSearchBloc() : super(FormSearchState.initial()) {
    on<FormSearchSetListEvent>(_setList);
    on<FormSearchSearchEvent>(_search);
  }

  void _setList(FormSearchSetListEvent event, Emitter<FormSearchState> emitter) {
    emitter(state.copyWith(list: event.list,filteredTextList: event.list));
  }

  void _search(FormSearchSearchEvent event, Emitter<FormSearchState> emitter) {
    if (event.text.isEmpty) emitter(state.copyWith(filteredTextList: state.list));
    if (state.list?.isNotEmpty == true) {
      final newList = state.list!.where((element) => element.contains(event.text)).toList();

      emitter(state.copyWith(filteredTextList: newList));
    }
  }
}
