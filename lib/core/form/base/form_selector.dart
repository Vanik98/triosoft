import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'form_text.dart';

class FormSelector extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final FormFieldValidator validator;
  final Icon? icon;
  final VoidCallback? onSelect;
  final String? selectedValue;
  final TextEditingController textEditingController;
  final Color? enableBackgroundColor;
  final Color? disableBackgroundColor;
  final List<TextInputFormatter>? inputFormatters;

  const FormSelector({
    super.key,
    required this.selectedValue,
    required this.textEditingController,
    this.hintText,
    required this.validator,
    this.icon,
    this.onSelect,
    this.labelText,
    this.enableBackgroundColor,
    this.disableBackgroundColor,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: FormText(
        enable: onSelect == null,
        controller: textEditingController,
        suffixIcon: icon,
        hintText: hintText,
        readOnly: true,
        value: selectedValue,
        labelText: labelText,
        validator: validator,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
