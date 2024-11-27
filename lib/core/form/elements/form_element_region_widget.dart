import 'package:flutter/material.dart';

import '../base/form_element_selector_full_widget.dart';
import '../base/form_element_wrapper.dart';

class FormElementRegionWidget extends StatelessWidget {
  const FormElementRegionWidget({
    super.key,
    required this.values,
    required this.onDateSelected,
    required this.scrollController,
  });

  final Function(String) onDateSelected;
  final List<String> values;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return FormElementSelectorFullWidget(
      onDateSelected: (v) {
        onDateSelected(v);
      },
      formElements: _createFormElements(),
      labelText: 'region',
      scrollController: scrollController,
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
