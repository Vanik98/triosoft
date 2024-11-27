import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../base/form_element_selector_full_widget.dart';
import '../base/form_element_wrapper.dart';
import '../bloc/form_search_bloc.dart';
import '../bloc/form_search_event.dart';

class FormElementGradeWidget extends StatelessWidget {
  const FormElementGradeWidget({
    super.key,
    required this.values,
    required this.onSelected,
    required this.scrollController,
    required this.initialValues,
  });

  final Function(List<String>) onSelected;
  final List<String> values;
  final List<String>? initialValues;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormSearchBloc()..add(FormSearchEvent.setList(values)),
      child: BlocBuilder<FormSearchBloc, FormSearchState>(
        builder: (context, state) {
          return FormElementSelectorFullWidget<String>(
            onSearchChanged: (v) {
              context.read<FormSearchBloc>().add(FormSearchEvent.search(v));
            },
            initialValue: initialValues?.join(", "),
            onSelected: (v) {},
            onChoose: (v) {
              onSelected(v);
            },
            formElements: _createFormElements(state.filteredTextList),
            isHaveSearch: true,
            labelText: LocaleKeys.grade.tr(),
            scrollController: scrollController,
          );
        },
      ),
    );
  }

  List<FormElement<String>> _createFormElements(List<String> list) {
    final List<FormElement<String>> formElements = [];
    for (var v in list) {
      var isInInitialValues = false;
      if (initialValues != null) {
        for (var i in initialValues!) {
          if (v == i) {
            isInInitialValues = true;
            break;
          }
        }
      }
      formElements.add(FormElement(data: v, title: v, isChecked: isInInitialValues));
    }
    return formElements;
  }
}
