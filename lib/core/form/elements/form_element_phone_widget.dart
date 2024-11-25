import 'package:flutter/material.dart';

import '../base/form_text.dart';

class FormElementPhoneWidget extends StatefulWidget {
  final ValueChanged<String?>? onTextChanged;
  final ValueChanged<String?>? onFocusChanged;
  final String? labelText;

  const FormElementPhoneWidget({super.key, this.onTextChanged, this.onFocusChanged, this.labelText});

  @override
  State<FormElementPhoneWidget> createState() => _FormElementPhoneWidgetState();
}

class _FormElementPhoneWidgetState extends State<FormElementPhoneWidget> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: '+');
    textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    if (textEditingController.text.isEmpty) {
      textEditingController.text = '+';
    } else if (!textEditingController.text.startsWith('+')) {
      textEditingController.text = '+${textEditingController.text.replaceAll('+', '')}';
    }
    textEditingController.selection = TextSelection.fromPosition(
      TextPosition(offset: textEditingController.text.length),
    );

    if (widget.onTextChanged != null) {
      widget.onTextChanged!(textEditingController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormText(
      hintText: 'number',
      controller: textEditingController,
      labelText: widget.labelText ?? 'number',
      onTextChanged: widget.onTextChanged,
      onFocusChanged: widget.onFocusChanged,
      textInputType: const TextInputType.numberWithOptions(signed: true),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'error';
        }
        RegExp regex = RegExp(phoneNumberRegex);
        if (!regex.hasMatch(value)) {
          return 'error';
        }
        return null;
      },
      value: '',
    );
  }

  static const phoneNumberRegex = r'^\+[0-9]{9,19}$';
}
