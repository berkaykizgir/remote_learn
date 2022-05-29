import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _instance = Preferences._internal();
  static SharedPreferences? sharedPreferences;
  static final defaults = {
    'language': 'en_us',
    'route': '/onboarding',
    'theme': 0,
    'balance': 0,
  };
  factory Preferences() => _instance;
  Preferences._internal();
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  String getString(String key) => (sharedPreferences?.getString(key) ?? '${defaults[key]}');
  Future<bool>? setString(String key, String value) => sharedPreferences?.setString(key, value);
  int getInt(String key) => (sharedPreferences?.getInt(key) ?? (defaults[key] as int));
  Future<bool>? setInt(String key, int value) => sharedPreferences?.setInt(key, value);
  bool getBool(String key) => (sharedPreferences?.getBool(key) ?? (defaults[key] as bool));
  Future<bool>? setBool(String key, bool value) => sharedPreferences?.setBool(key, value);
  get getTheme => getInt('theme');
  List<Color> getThemeGradientBackgroundColor() {
    print(getInt('theme'));
    if (getInt('theme') == 0) {
      return [const Color(0xFF041B2D), const Color(0xFF004E9A), const Color(0xFF428CD4), const Color(0xFFFF9CDA), const Color(0xFFEa4492)];
    }
    if (getInt('theme') == 1) {
      return [const Color(0xFFDC8665), const Color(0xFF138086), const Color(0xFF534666), const Color(0xFFCD7672), const Color(0xFFEEB462)];
    }

    return [];
  }

  set setTheme(int theme) => setInt('theme', theme);
  get getRoute => getString('route');
  set setRoute(String route) => setString('route', route);
  get getBalance => getInt('balance');
  set setBalance(int balance) => setInt('balance', Preferences().getBalance + balance);
}
