import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../base/form_selector.dart';

class FormElementDateOfBirthWidget extends StatefulWidget {
  final Function(String) onDateSelected;
  final String? initialValue;
  final bool? isImageRequired;

  const FormElementDateOfBirthWidget({
    super.key,
    required this.onDateSelected,
    this.initialValue,
    this.isImageRequired = true,
  });

  @override
  State<FormElementDateOfBirthWidget> createState() => _FormElementDateOfBirthWidgetState();
}

class _FormElementDateOfBirthWidgetState extends State<FormElementDateOfBirthWidget> {
  String? _selectedDate;
  DateTime? _inputtingDateTime;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialValue;
    _textEditingController = TextEditingController(text: _selectedDate);
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
      labelText: 'DD/MM/YYYY',
      hintText: 'DD/MM/YYYY',
      validator: (value) {
        if (widget.isImageRequired == false) return null;
        if (_selectedDate == null) {
          return 'error';
        }
        return null;
      },
      selectedValue: _selectedDate,
      onSelect: _onSelect,
      icon: const Icon(Icons.calendar_month),
    );
  }

  void _onSelect() async {
    DateTime now = DateTime.now();
    DateTime lastDate = now;
    DateTime firstDate = now.subtract(const Duration(days: 365 * 100));

    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDatePickerMode: DatePickerMode.year,
      lastDate: lastDate,
      currentDate: _inputtingDateTime,
      builder: (BuildContext context, Widget? widget) => Theme(
        data: ThemeData(
          colorScheme: const ColorScheme.light(primary: Colors.blue),
          datePickerTheme: const DatePickerThemeData(
            backgroundColor: Colors.white,
            dividerColor: Colors.grey,
            headerBackgroundColor: Colors.blue,
            headerForegroundColor: Colors.white,
          ),
        ),
        child: widget!,
      ),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
        _textEditingController.text = _selectedDate!;
        widget.onDateSelected(_selectedDate!);
      });
    }
  }
}
