import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utilis {
  static Future<bool?> showExitConfirmationDialog(BuildContext context,
      {required void Function()? onPressed}) async {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit Game'),
        content: const Text('Are you sure you want to exit the game?'),
        actions: [
          TextButton(
            onPressed:
                // () {
                //   Navigator.of(context).pop();
                //   Navigator.of(context).pop();
                // },
                onPressed,
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('No'),
          ),
        ],
      ),
    );
  }

  static Future<void> saveLocale(Locale locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("locale", locale.toString());
  }

  static Future<Locale?> getLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var localeString = prefs.getString("locale");
    switch (localeString) {
      case 'ne_NP':
        return const Locale('ne', 'NP');
      case 'hi_IN':
        return const Locale('hi', 'IN');
      case 'ar_AE':
        return const Locale('ar', 'AE');
      default:
        return const Locale('en', 'US');
    }
  }
}
