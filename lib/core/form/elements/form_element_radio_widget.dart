import 'package:flutter/material.dart';

import '../base/form_element_wrapper.dart';

class FormElementRadioWidget<T> extends StatefulWidget {
  final List<FormElement<T>> forms;
  final Function(T) onTitleSelected;
  final bool isHorizontal;
  final String? initialSelectedTitle;
  final bool? isImageRequired;

  const FormElementRadioWidget({
    super.key,
    required this.forms,
    required this.onTitleSelected,
    this.isHorizontal = true,
    this.initialSelectedTitle,
    this.isImageRequired = true,
  });

  @override
  State<FormElementRadioWidget> createState() => _FormElementRadioWidgetState<T>();
}

class _FormElementRadioWidgetState<T> extends State<FormElementRadioWidget<T>> {
  String? _selectedTitle;
  late List<FormElement<T>> forms;

  @override
  void initState() {
    _selectedTitle = widget.initialSelectedTitle;
    forms = widget.forms;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      initialValue: _selectedTitle,
      validator: (value) {
        if(widget.isImageRequired == false) return null;
        if (value == null || value.isEmpty) {
          return 'error';
        }
        return null;
      },
      builder: (FormFieldState<String?> formFieldState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (widget.isHorizontal)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _getFormWidgets(formFieldState),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _getFormWidgets(formFieldState),
                  ),
            if (formFieldState.errorText != null)
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    formFieldState.errorText!,
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                  )),
          ],
        );
      },
    );
  }

  _getFormWidgets(FormFieldState<String?> formFieldState) => [
        ...forms.map((item) {
          return Row(
            children: [
              Radio<String>(
                activeColor: Colors.green,
                value: item.title,
                groupValue: _selectedTitle,
                onChanged: (newValue) {
                  setState(() {
                    _selectedTitle = newValue;
                    formFieldState.didChange(newValue);
                    widget.onTitleSelected(item.data);
                  });
                },
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedTitle = item.title;
                    formFieldState.didChange(item.title);
                    widget.onTitleSelected(item.data);
                  });
                },
                child: Text(
                  item.title,
                ),
              ),
            ],
          );
        }),
      ];
}
