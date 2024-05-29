import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:myapp/Utilis.dart';

import 'package:myapp/core/language.i18n.dart';
import 'package:myapp/language_model.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language".i18n),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: LanguageModel.language.length,
        itemBuilder: (context, index) {
          var langData = LanguageModel.language[index];
          return ListTile(
              title: Text(langData.title),
              trailing: Switch.adaptive(
                  value: langData.locale == I18n.locale,
                  onChanged: (value) {
                    Utilis.saveLocale(langData.locale);
                    I18n.of(context).locale = langData.locale;
                    Navigator.pop(context);
                  }));
        },
      ),
    );
  }
}
