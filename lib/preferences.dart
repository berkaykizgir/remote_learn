import 'package:flutter/material.dart';
import 'package:remote_learn/gamification/theme_contents.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _instance = Preferences._internal();
  static SharedPreferences? sharedPreferences;
  static final defaults = {
    'language': 'en_us',
    'route': '/onboarding',
    'theme': 0,
    'balance': 1000,
    'role': 'student',
    'invitation_key': '',
    'theme_market': [
      '1',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
      '0',
    ]
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
  List<String> getStringList(String key) => (sharedPreferences?.getStringList(key) ?? (defaults[key] as List<String>));
  Future<bool>? setStringList(String key, List<String> value) => sharedPreferences?.setStringList(key, value);
  get getTheme => getInt('theme');
  List<Color> getThemeGradientBackgroundColor() {
    return themeContents[getInt('theme')].gradientBackgroundColors;
  }

  Color getThemeButtonColor() {
    return themeContents[getInt('theme')].buttonColor;
  }

  set setTheme(int theme) => setInt('theme', theme);
  bool getThemeMarketData(int index) {
    if (getStringList('theme_market')[index] == '1') {
      return false;
    } else {
      return true;
    }
  }

  void setThemeMarketData(int index) {
    List<String> temp = getStringList('theme_market');
    temp[index] = '1';
    setStringList('theme_market', temp);
  }

  get getRoute => getString('route');
  set setRoute(String route) => setString('route', route);
  get getRole => getString('role');
  set setRole(String role) => setString('role', role);
  get getInvitationKey => getString('invitation_key');
  set setInvitationKey(String key) => setString('invitation_key', key);
  get getBalance => getInt('balance');
  set setBalance(int balance) => setInt('balance', Preferences().getBalance + balance);
}
