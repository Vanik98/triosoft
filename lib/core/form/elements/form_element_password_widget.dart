import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../base/form_text.dart';

class FormElementPasswordWidget extends StatefulWidget {
  final ValueChanged<String?>? onTextChanged;
  final ValueChanged<String?>? onFocusChanged;
  final String? initialValue;
  final String? confirmPass;
  final String? labelText;

  const FormElementPasswordWidget({super.key, this.onTextChanged, this.onFocusChanged, this.initialValue, this.labelText, this.confirmPass});

  @override
  State<FormElementPasswordWidget> createState() => _FormElementPasswordWidgetState();
}

class _FormElementPasswordWidgetState extends State<FormElementPasswordWidget> {
  late TextEditingController textEditingController;
  late bool obscureText = true;

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
      suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility)),
      obscureText: obscureText,
      controller: textEditingController,
      labelText: widget.labelText ?? (widget.confirmPass != null ? LocaleKeys.confirm_password.tr() : LocaleKeys.password.tr()),
      onTextChanged: widget.onTextChanged,
      onFocusChanged: widget.onFocusChanged,
      validator: (value) {
        if (widget.confirmPass != null && widget.confirmPass != value) {
          return LocaleKeys.error.tr();
        }
        if (value.length < 3) {
          return LocaleKeys.error.tr();
        }
        return null;
      },
      value: widget.initialValue ?? '',
    );
  }
}
