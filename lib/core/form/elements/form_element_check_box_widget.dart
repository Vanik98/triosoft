import 'package:flutter/material.dart';

class FormElementCheckBoxWidget extends StatefulWidget {
  final String? title;
  final ValueChanged<bool> onChanged;
  final bool? isChecked;
  final bool isEnabled;

  const FormElementCheckBoxWidget({
    super.key,
    required this.onChanged,
    required this.isChecked,
    this.title,
    this.isEnabled = true,
  });

  @override
  FormElementAgreeWidgetState createState() => FormElementAgreeWidgetState();
}

class FormElementAgreeWidgetState extends State<FormElementCheckBoxWidget> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (FormFieldState<dynamic> field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: widget.isEnabled
                  ? () {
                      final value = !_isChecked;
                      setState(() {
                        _isChecked = value;
                      });
                      widget.onChanged(_isChecked);
                    }
                  : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: _isChecked,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          _isChecked = value;
                        });
                        widget.onChanged(_isChecked);
                      }
                    },
                    activeColor: Colors.green,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      widget.title ?? '',
                      style: const TextStyle(color: Colors.white),
                      // style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ),
            if (field.errorText != null)
              Text(
                field.errorText!,
                style: const TextStyle(color: Colors.red),
              ),
          ],
        );
      },
      validator: (value) {
        if (_isChecked != true) {
          return 'error';
        }
        return null;
      },
    );
  }
}
