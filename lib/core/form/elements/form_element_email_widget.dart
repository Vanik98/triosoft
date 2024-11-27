import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../base/form_text.dart';

class FormElementEmailWidget extends StatefulWidget {
  final ValueChanged<String?>? onTextChanged;
  final ValueChanged<String?>? onFocusChanged;
  final String? initialValue;
  final String? labelText;

  const FormElementEmailWidget({super.key, this.onTextChanged, this.onFocusChanged, this.initialValue, this.labelText});

  @override
  State<FormElementEmailWidget> createState() => _FormElementEmailWidgetState();
}

class _FormElementEmailWidgetState extends State<FormElementEmailWidget> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.initialValue ?? '');
    textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    if (widget.onTextChanged != null) {
      widget.onTextChanged!(textEditingController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormText(
      hintText: '',
      controller: textEditingController,
      labelText: widget.labelText ?? LocaleKeys.email.tr(),
      onTextChanged: widget.onTextChanged,
      onFocusChanged: widget.onFocusChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return LocaleKeys.error.tr();
        }
        RegExp regex = RegExp(_emailRegex);
        if (!regex.hasMatch(value)) {
          return LocaleKeys.error.tr();
        }
        return null;
      },
      value: widget.initialValue ?? '',
    );
  }

  static const _emailRegex = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
}
