import 'package:flutter/material.dart';
import 'package:triosoft/core/form/base/validator_text_form_field.dart';

class FormText extends ValidatorTextFormField {
  const FormText({
    super.key,
    required super.value,
    required super.controller,
    super.onTextChanged,
    super.onFocusChanged,
    required super.validator,
    super.readOnly = false,
    super.labelText,
    super.obscureText = false,
    super.suffixIcon,
    super.textInputType,
    super.hintText,
    super.enable = true,
    super.inputFormatters,
    super.maxLines,
    super.maxLength,
    super.isFixLabel,
  });

  @override
  Color? get hintTextColor => Colors.grey.withOpacity(0.5);

  @override
  Color? get textColor => Colors.grey;

  @override
  Color? get labelTextColor => Colors.grey;

  @override
  Color? get errorTextColor => Colors.red;

  @override
  Color? get enableBackgroundColor => Colors.green.withOpacity(0.1);

  @override
  Color? get disableBackgroundColor => Colors.green.withOpacity(0.1);

}
