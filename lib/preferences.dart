import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _instance = Preferences._internal();
  static SharedPreferences? sharedPreferences;
  static final defaults = {
    'language': 'en_us',
    'isMorning': true,
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
  get getMorning => getBool('isMorning');
  set setMorning(bool isMorning) => setBool('isMorning', isMorning);
}
