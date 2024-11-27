import 'package:flutter/material.dart';


class CheckBoxWidget extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  final bool initialValue;

  const CheckBoxWidget({
    super.key,
    required this.onChanged,
    this.initialValue = false,
  });

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.2,
      child: Checkbox(
        value: _isChecked,
        onChanged: (bool? value) {
          if (value != null) {
            setState(() {
              _isChecked = value;
            });
            widget.onChanged(_isChecked);
          }
        },
        activeColor: Colors.green.shade700,
        checkColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      ),
    );
  }
}
