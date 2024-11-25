enum LanguageEnum {
  english('English', 'en'),
  russian('Русский', 'ru'),
  armenian('Հայերեն', 'hy');

  final String title;

  final String code;

  const LanguageEnum(this.title, this.code);
}

final languages = [
  LanguageEnum.english,
  LanguageEnum.russian,
  LanguageEnum.armenian,
];
