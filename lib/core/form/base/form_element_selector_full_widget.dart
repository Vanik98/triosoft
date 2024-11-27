import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../base/form_element_wrapper.dart';
import '../base/form_selector.dart';
import '../base/form_selector_extra_widget.dart';

class FormElementSelectorFullWidget<T> extends StatefulWidget {
  const FormElementSelectorFullWidget({
    super.key,
    required this.onSelected,
    this.initialValue,
    required this.formElements,
    required this.labelText,
    this.icon,
    this.isHaveSearch = false,
    this.onSearchChanged,
    required this.scrollController,
    this.onChoose,
  });

  final Function(T) onSelected;
  final Function(List<T> data)? onChoose;
  final List<FormElement<T>> formElements;
  final String? initialValue;
  final String labelText;
  final Icon? icon;
  final bool isHaveSearch;
  final ValueChanged<String>? onSearchChanged;
  final ScrollController scrollController;

  @override
  State<FormElementSelectorFullWidget<T>> createState() => _FormElementSelectorFullWidgetState<T>();
}

class _FormElementSelectorFullWidgetState<T> extends State<FormElementSelectorFullWidget<T>> {
  String? _selectedValue;
  late TextEditingController _textEditingController;
  bool isShow = false;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
    _textEditingController = TextEditingController(text: _selectedValue);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          FormSelector(
            textEditingController: _textEditingController,
            labelText: widget.labelText,
            hintText: widget.labelText,
            validator: (value) {
              if (_selectedValue == null) {
                return LocaleKeys.error.tr();
              }
              return null;
            },
            selectedValue: _selectedValue,
            onSelect: () {
              setState(() {
                isShow = !isShow;
              });
            },
            icon: widget.icon ?? const Icon(Icons.keyboard_arrow_down_rounded),
          ),
          if (isShow)
            FormElementExtraWidget<T>(
              elements: widget.formElements,
              onSelected: (FormElement<T> element) {
                setState(() {
                  _selectedValue = element.title;
                  _textEditingController.text = element.title;
                  isShow = false;
                });
                widget.onSelected(element.data);
              },
              onChoose: (List<FormElement<T>> fList) {
                List<String> titles = fList.map((e) => e.title).toList();
                List<T> dataList = fList.map((e) => e.data).toList();
                setState(() {
                  _selectedValue = titles.join(', ');
                  _textEditingController.text = _selectedValue!;
                });
                widget.onChoose?.call(dataList);
              },
              onSearchChanged: widget.onSearchChanged,
              scrollController: widget.scrollController,
            ),
        ],
      ),
    );
  }
}
