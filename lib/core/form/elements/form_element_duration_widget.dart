import 'package:flutter/material.dart';

import '../base/form_selector.dart';

class FormElementDurationWidget extends StatefulWidget {
  final Function(String) onDurationSelected;
  final String? initialValue;

  const FormElementDurationWidget({
    super.key,
    required this.onDurationSelected,
    this.initialValue,
  });

  @override
  State<FormElementDurationWidget> createState() => _FormElementDurationWidgetState();
}

class _FormElementDurationWidgetState extends State<FormElementDurationWidget> {
  String? _selectedDuration;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _selectedDuration = widget.initialValue;
    _textEditingController = TextEditingController(text: _selectedDuration);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormSelector(
      textEditingController: _textEditingController,
      labelText: 'duration',
      hintText: '0 min',
      validator: (value) {
        if (value == null || value?.isEmpty == true) {
          return 'errro';
        }
        return null;
      },
      selectedValue: _selectedDuration,
      onSelect: _onSelect,
      icon: const Icon(Icons.keyboard_arrow_down),
    );
  }

  void _onSelect() async {
    // final result = await context.openDurationBottomSheetDialog();
    // String? selectedDuration = result.$2;
    // if (selectedDuration != null) {
    //   setState(() {
    //     _selectedDuration = selectedDuration;
    //     _textEditingController.text = _selectedDuration!;
    //     widget.onDurationSelected(_selectedDuration!.replaceAll("min", emptyString).replaceAll(" ", emptyString));
    //   });
    // }
  }
}
