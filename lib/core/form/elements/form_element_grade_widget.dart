import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../base/form_element_selector_full_widget.dart';
import '../base/form_element_wrapper.dart';
import '../bloc/form_search_bloc.dart';
import '../bloc/form_search_event.dart';

class FormElementGradeWidget extends StatelessWidget {
  const FormElementGradeWidget({super.key, required this.values, required this.onDateSelected, required this.scrollController});

  final Function(String) onDateSelected;
  final List<String> values;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormSearchBloc()..add(FormSearchEvent.setList(values)),
      child: BlocBuilder<FormSearchBloc, FormSearchState>(
        builder: (context, state) {
          return FormElementSelectorFullWidget(
            onSearchChanged: (v) {
              context.read<FormSearchBloc>().add(FormSearchEvent.search(v));
            },
            onDateSelected: (v) {
              onDateSelected(v);
            },
            formElements: _createFormElements(state.filteredTextList),
            labelText: LocaleKeys.grade.tr(),
            scrollController: scrollController,
          );
        },
      ),
    );
  }

  List<FormElement> _createFormElements(List<String> list) {
    final List<FormElement> formElements = [];
    for (var v in list) {
      formElements.add(FormElement(data: v, title: v));
    }
    return formElements;
  }
}
