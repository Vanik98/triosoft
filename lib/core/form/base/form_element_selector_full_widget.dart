import 'package:flutter/material.dart';

import '../base/form_element_wrapper.dart';
import '../base/form_selector.dart';
import '../base/form_selector_extra_widget.dart';

class FormElementSelectorFullWidget<T> extends StatefulWidget {
  final Function(T) onDateSelected;
  final String? initialValue;
  final String labelText;
  final List<FormElement<T>> formElements;
  final Icon? icon;
  final bool isHaveSearch;
  final ValueChanged<String>? onSearchChanged;

  const FormElementSelectorFullWidget({
    super.key,
    required this.onDateSelected,
    this.initialValue,
    required this.formElements,
    required this.labelText,
    this.icon,
    this.isHaveSearch = false,
    this.onSearchChanged,
  });

  @override
  State<FormElementSelectorFullWidget> createState() => _FormElementSelectorFullWidgetState<T>();
}

class _FormElementSelectorFullWidgetState<T> extends State<FormElementSelectorFullWidget> {
  String? _selectedValue;
  late TextEditingController _textEditingController;
  bool isShow = false;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
    _textEditingController = TextEditingController(text: _selectedValue);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          FormSelector(
            textEditingController: _textEditingController,
            labelText: widget.labelText,
            hintText: widget.labelText,
            validator: (value) {
              if (_selectedValue == null) {
                return 'error';
              }
              return null;
            },
            selectedValue: _selectedValue,
            onSelect: () {
              setState(() {
                isShow = !isShow;
              });
            },
            icon: widget.icon ?? const Icon(Icons.keyboard_arrow_down_rounded),
          ),
          if (isShow)
            FormElementExtraWidget(
              element: widget.formElements,
              onSelected: (String v) {
                setState(() {
                  _selectedValue = v;
                  _textEditingController.text = v;
                  isShow = false;
                });
                widget.onDateSelected(v);
              },
              onSearchChanged: widget.onSearchChanged,
            ),
        ],
      ),
    );
  }
}
