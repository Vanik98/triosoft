import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ValidatorTextFormField extends StatefulWidget {
  final ValueChanged<String?>? onTextChanged;
  final ValueChanged<String?>? onFocusChanged;
  final String? value;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final bool readOnly;
  final bool enable;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final Color? errorTextColor;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? enableBackgroundColor;
  final Color? disableBackgroundColor;
  final Color? textColor;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final int? maxLength;
  final bool? isFixLabel;

  const ValidatorTextFormField({
    super.key,
    required this.value,
    required this.controller,
    this.onTextChanged,
    this.onFocusChanged,
    required this.validator,
    this.readOnly = false,
    this.labelText,
    this.obscureText = false,
    this.suffixIcon,
    this.textInputType,
    this.hintText,
    this.enable = true,
    this.errorTextColor,
    this.labelTextColor,
    this.hintTextColor,
    this.enableBackgroundColor,
    this.disableBackgroundColor,
    this.textColor,
    this.inputFormatters,
    this.maxLines,
    this.maxLength,
    this.isFixLabel,
  });

  @override
  ValidatorTextFormFieldState createState() => ValidatorTextFormFieldState();
}

class ValidatorTextFormFieldState extends State<ValidatorTextFormField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
    widget.controller.text = widget.value ?? '';
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (widget.onFocusChanged != null) {
      widget.onFocusChanged!(_focusNode.hasFocus ? 'focused' : 'unfocused');
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.maxLength,
      maxLines: widget.maxLines ?? 1,
      focusNode: _focusNode,
      controller: widget.controller,
      onChanged: widget.onTextChanged,
      readOnly: widget.readOnly,
      enabled: widget.enable,
      obscureText: widget.obscureText,
      keyboardType: widget.textInputType,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        floatingLabelBehavior: widget.isFixLabel == true ? FloatingLabelBehavior.always : null,
        suffixIcon: widget.suffixIcon,
        labelStyle: easyTextFormFieldLabelStyle(),
        fillColor: widget.enable ? widget.enableBackgroundColor : widget.disableBackgroundColor,
        filled: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: widget.hintTextColor),
        labelText: widget.labelText,
        border: disableTextFormFieldBorder(),
        enabledBorder: enableTextFormFieldBorder(),
        disabledBorder: disableTextFormFieldBorder(),
        focusedBorder: easyTextFormFieldFocusedBorder(),
        errorBorder: easyTextFormFieldErrorBorder(),
        focusedErrorBorder: easyTextFormFieldFocusedErrorBorder(),
      ),
      validator: widget.validator,
    );
  }

  TextStyle easyTextFormFieldLabelStyle() => TextStyle(color: widget.labelTextColor, fontSize: 14);

  InputBorder disableTextFormFieldBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: widget.disableBackgroundColor ?? Colors.black),
      );

  InputBorder enableTextFormFieldBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: widget.enableBackgroundColor ?? Colors.black),
      );

  InputBorder easyTextFormFieldFocusedBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: widget.enableBackgroundColor?.withOpacity(0.4) ?? Colors.black),
      );

  InputBorder easyTextFormFieldErrorBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: widget.errorTextColor ?? Colors.red),
      );

  InputBorder easyTextFormFieldFocusedErrorBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: widget.errorTextColor ?? Colors.red),
      );
}
