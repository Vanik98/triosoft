import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/features/authorization/domain/usecases/get_user_token_use_case.dart';

import 'form_search_event.dart';

part 'form_search_state.dart';

class FormSearchBloc extends Bloc<FormSearchEvent, FormSearchState> {

  FormSearchBloc() : super(FormSearchState.initial()) {
    on<FormSearchSearchEvent>(_search);
  }

  void _search(FormSearchSearchEvent event, Emitter<FormSearchState> emitter) {
    final newList = event.list.where((element) => element.contains(event.text)).toList();

    emitter(state.copyWith(filteredTextList: newList));
  }
}
