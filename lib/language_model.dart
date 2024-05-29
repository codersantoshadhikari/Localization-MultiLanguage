import 'package:flutter/rendering.dart';

class LanguageModel {
  String title;
  Locale locale;
  LanguageModel({required this.title, required this.locale});

  static List<LanguageModel> language = [
    LanguageModel(title: "English", locale: const Locale('en', 'US')),
    LanguageModel(title: "नेपाली (Nepali)", locale: const Locale('ne', 'NP')),
    LanguageModel(title: "हिंदी (Hindi)", locale: const Locale('hi', 'IN')),
    LanguageModel(title: "Aerabic", locale: const Locale('ar', 'AE'))
  ];
}
