import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:triosoft/core/base/localization/languages.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                context.setLocale(Locale(languages[index].code));
                context.pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(languages[index].title),
              ));
        },
        itemCount: languages.length,
      ),
    );
  }
}
