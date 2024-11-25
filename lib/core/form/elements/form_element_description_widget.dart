import 'package:flutter/material.dart';

import '../base/form_text.dart';

class FormElementDescriptionWidget extends StatefulWidget {
  final ValueChanged<String?>? onTextChanged;
  final ValueChanged<String?>? onFocusChanged;
  final String? initialValue;
  final int? maxLines;
  final int? maxLength;
  final int? minLength;

  const FormElementDescriptionWidget({
    super.key,
    this.onTextChanged,
    this.onFocusChanged,
    this.initialValue,
    this.maxLines,
    this.maxLength,
    this.minLength,
  });

  @override
  State<FormElementDescriptionWidget> createState() => _FormElementDescriptionWidgetState();
}

class _FormElementDescriptionWidgetState extends State<FormElementDescriptionWidget> {
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
      isFixLabel: true,
      maxLines: widget.maxLines ?? 15,
      maxLength: widget.maxLength ?? 300,
      hintText: 'write',
      controller: textEditingController,
      labelText: 'description',
      onTextChanged: widget.onTextChanged,
      onFocusChanged: widget.onFocusChanged,
      validator: (value) {
        if (value.length < (widget.minLength ?? 10) || value.length > (widget.maxLength ?? 300)) {
          return 'error';
        }
        return null;
      },
      value: widget.initialValue ?? '',
    );
  }
}
