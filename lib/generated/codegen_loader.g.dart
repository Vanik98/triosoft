// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> hy = {
  "sign_up": "Գրանցվել",
  "quick_easy": "Արագ և Հեշտ է",
  "name": "Անուն",
  "last_name": "Ազգանուն",
  "email": "Էլ. հասցե",
  "number": "Հեռախոսահամար",
  "region": "Տարածաշրջան",
  "city_village": "Քաղաք, Գյուղ",
  "school": "Դպրոց",
  "subject": "Առարկա",
  "grade": "Դասարան",
  "password": "Գաղտնաբառ",
  "confirm_password": "Հաստատել գաղտնաբառը",
  "ok": "Լավ",
  "error": "սխալ",
  "log_out": "Դուրս գալ"
};
static const Map<String,dynamic> ru = {
  "sign_up": "Зарегистрироваться",
  "quick_easy": "Быстро и легко",
  "name": "Имя",
  "last_name": "Фамилия",
  "email": "Эл. почта",
  "number": "Номер",
  "region": "Регион",
  "city_village": "Город, Деревня",
  "school": "Школа",
  "subject": "Предмет",
  "grade": "Класс",
  "password": "Пароль",
  "confirm_password": "Подтвердить пароль",
  "ok": "Ок",
  "error": "ошибка",
  "log_out": "Выйти"
};
static const Map<String,dynamic> en = {
  "sign_up": "Sign Up",
  "quick_easy": "It is Quick and Easy",
  "name": "Name",
  "last_name": "Last Name",
  "email": "Email",
  "number": "Number",
  "region": "Region",
  "city_village": "City, Village",
  "school": "School",
  "subject": "Subject",
  "grade": "Grade",
  "password": "Password",
  "confirm_password": "Confirm Password",
  "ok": "Ok",
  "error": "error",
  "log_out": "Log Out"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"hy": hy, "ru": ru, "en": en};
}
