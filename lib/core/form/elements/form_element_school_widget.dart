import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../base/form_element_selector_full_widget.dart';
import '../base/form_element_wrapper.dart';
import '../bloc/form_search_bloc.dart';
import '../bloc/form_search_event.dart';

class FormElementSchoolWidget extends StatelessWidget {
  const FormElementSchoolWidget({super.key, required this.values, required this.onDateSelected});

  final Function(String) onDateSelected;
  final List<String> values;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormSearchBloc(),
      child: BlocBuilder<FormSearchBloc, FormSearchState>(
        builder: (context, state) {
          return FormElementSelectorFullWidget(
            onSearchChanged: (v) {
              context.read<FormSearchBloc>().add(FormSearchEvent.search(v, values));
            },
            onDateSelected: (v) {
              onDateSelected(v);
            },
            formElements: _createFormElements(),
            labelText: 'School',
            isHaveSearch: true,
          );
        },
      ),
    );
  }

  List<FormElement> _createFormElements() {
    final List<FormElement> formElements = [];
    for (var v in values) {
      formElements.add(FormElement(data: v, title: v));
    }
    return formElements;
  }
}
