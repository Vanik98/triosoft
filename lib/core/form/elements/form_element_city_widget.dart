import 'package:flutter/material.dart';

import '../base/form_element_selector_full_widget.dart';
import '../base/form_element_wrapper.dart';

class FormElementCityWidget extends StatelessWidget {
  const FormElementCityWidget({super.key, required this.values, required this.onDateSelected});

  final Function(String) onDateSelected;
  final List<String> values;

  @override
  Widget build(BuildContext context) {
    return FormElementSelectorFullWidget(
      onDateSelected: (v) {
        onDateSelected(v);
      },
      formElements: _createFormElements(),
      labelText: 'City',
      isHaveSearch: true,
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
