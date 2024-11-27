import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../base/form_text.dart';

class FormElementNameWidget extends StatefulWidget {
  final ValueChanged<String?>? onTextChanged;
  final ValueChanged<String?>? onFocusChanged;
  final String? initialValue;
  final String? labelText;

  const FormElementNameWidget(
      {super.key, this.onTextChanged, this.onFocusChanged, this.initialValue, this.labelText});

  @override
  State<FormElementNameWidget> createState() => _FormElementNameWidgetState();
}

class _FormElementNameWidgetState extends State<FormElementNameWidget> {
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
      labelText: widget.labelText ?? LocaleKeys.name.tr(),
      onTextChanged: widget.onTextChanged,
      onFocusChanged: widget.onFocusChanged,
      validator: (value) {
        if (value.length < 3) {
          return LocaleKeys.error.tr();
        }
        return null;
      },
      value: widget.initialValue ?? '',
    );
  }
}
