import 'package:flutter/material.dart';
import 'package:myapp/core/language.i18n.dart';

import 'main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  Locale _locale = const Locale('en', 'US');

  void _changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
      // Change the app locale
      // MyApp.setLocale(context, _locale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nepal Info'.i18n),
        // actions: [
        //   DropdownButton<Locale>(
        //     value: _locale,
        //     icon: const Icon(Icons.language),
        //     onChanged: (Locale? newLocale) {
        //       if (newLocale != null) {
        //         _changeLanguage(newLocale);
        //       }
        //     },
        //     items: const [
        //       DropdownMenuItem(
        //         value: Locale('en', 'US'),
        //         child: Text('English'),
        //       ),
        //       DropdownMenuItem(
        //         value: Locale('hi', 'IN'),
        //         child: Text('हिंदी'),
        //       ),
        //       DropdownMenuItem(
        //         value: Locale('es', 'ES'),
        //         child: Text('Español'),
        //       ),
        //       DropdownMenuItem(
        //         value: Locale('ja', 'JP'),
        //         child: Text('日本語'),
        //       ),
        //       DropdownMenuItem(
        //         value: Locale('pt', 'PT'),
        //         child: Text('Português'),
        //       ),
        //     ],
        //   ),
        // ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Nepal'.i18n,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Nepal is a landlocked country located in South Asia. It is bordered by China to the north and India to the south, east, and west. Nepal is known for its diverse geography, including the Himalayan mountain range, which contains eight of the world\'s ten highest peaks, including Mount Everest, the highest point on Earth.'
                .i18n,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Text(
            'Facts about Nepal'.i18n,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            '1. Capital: Kathmandu\n'
                    '2. Population: Approximately 30 million\n'
                    '3. Official Language: Nepali\n'
                    '4. Currency: Nepalese Rupee (NPR)\n'
                    '5. Major Religion: Hinduism\n'
                    '6. Famous for: Mount Everest, Lumbini (birthplace of Buddha)'
                .i18n,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
