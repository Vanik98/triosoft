import 'package:flutter/material.dart';

import '../../widgets/check_box_widget.dart';
import '../../widgets/search_widget.dart';
import 'form_element_wrapper.dart';

class FormElementExtraWidget<T> extends StatelessWidget {
  const FormElementExtraWidget({
    super.key,
    required this.elements,
    required this.onSelected,
    required this.onSearchChanged,
    required this.scrollController,
    this.onChoose,
  });

  final List<FormElement<T>> elements;
  final Function(FormElement<T> element) onSelected;
  final Function(List<FormElement<T>> data)? onChoose;
  final ValueChanged<String>? onSearchChanged;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double availableHeight = constraints.maxHeight.isFinite ? constraints.maxHeight : 200;
        double height = availableHeight < 200 ? availableHeight : 200;

        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onSearchChanged != null)
                SearchWidget(
                  onChanged: onSearchChanged!,
                ),
              const SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: height,
                ),
                child: ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: elements.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (elements[index].isChecked == null) onSelected(elements[index]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                elements[index].title,
                              ),
                              if (elements[index].isChecked != null)
                                CheckBoxWidget(
                                  initialValue: elements[index].isChecked!,
                                  onChanged: (bool value) {
                                    List<FormElement<T>> chosenElements = [];
                                    for (var i = 0; i < elements.length; i++) {
                                      if (elements[i].isChecked == true) {
                                        if (i != index) {
                                          chosenElements.add(elements[i]);
                                        }
                                      }
                                    }
                                    if (elements[index].isChecked == false) {
                                      chosenElements.add(elements[index]..isChecked = true);
                                    } else {
                                      elements[index].isChecked = false;
                                    }
                                    if (onChoose != null) onChoose!(chosenElements);
                                  },
                                )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
