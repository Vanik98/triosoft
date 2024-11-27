import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../base/form_element_selector_full_widget.dart';
import '../base/form_element_wrapper.dart';
import '../bloc/form_search_bloc.dart';
import '../bloc/form_search_event.dart';

class FormElementSchoolWidget extends StatelessWidget {
  const FormElementSchoolWidget({super.key, required this.values, required this.onSelected, required this.scrollController});

  final Function(String) onSelected;
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
            onSelected: (v) {
              onSelected(v);
            },
            formElements: _createFormElements(state.filteredTextList),
            labelText: LocaleKeys.school.tr(),
            isHaveSearch: true,
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
