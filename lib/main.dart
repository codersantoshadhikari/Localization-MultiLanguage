import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:myapp/Utilis.dart';
import 'home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 var initialLocale = await Utilis.getLocale();
  runApp(
    I18n(
      initialLocale: initialLocale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Localization",
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('hi', 'IN'),
        Locale('es', 'ES'),
        Locale('ja', 'JP'),
        Locale('pt', 'PT'),
      ],
      home: MyHomePage(),
    );
  }
}
