import 'dart:ui';

import 'languages.dart';

class EasyLocalizationConfig {
  static const path = 'assets/translations';
  static final List<Locale> supportedLocales = languages.map((language) => Locale(language.code)).toList();
  static final startLocale = Locale(LanguageEnum.armenian.code);
  static final fallbackLocale = Locale(LanguageEnum.english.code);
}
