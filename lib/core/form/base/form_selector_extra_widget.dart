import 'package:flutter/material.dart';

import '../../widgets/search_widget.dart';
import 'form_element_wrapper.dart';

class FormElementExtraWidget<T> extends StatelessWidget {
  const FormElementExtraWidget({
    super.key,
    required this.element,
    required this.onSelected,
    required this.onSearchChanged,
  });

  final List<FormElement> element;
  final Function(T data) onSelected;
  final ValueChanged<String>? onSearchChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.green.shade100, borderRadius: BorderRadius.circular(10)),
      height: 300,
      child: Column(
        children: [
          if (onSearchChanged != null)
            SearchWidget(
              onChanged: onSearchChanged!,
            ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: element.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      onSelected(element[index].data);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.yellow.withOpacity(0.4), borderRadius: BorderRadius.circular(4)),
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          element[index].title,
                        ),
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
