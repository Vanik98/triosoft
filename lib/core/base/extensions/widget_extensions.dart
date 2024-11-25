import 'dart:async';

import 'package:flutter/material.dart';

extension OpenDialog on BuildContext {
  Future<void> openSalonDefaultBottomSheetDialog(Widget widget) {
    return _defaultListSetups(widget);
  }

  Future<void> _defaultListSetups(Widget widget) async {
    return await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.25,
          maxChildSize: 0.8,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return widget;
          },
        );
      },
    );
  }
}
