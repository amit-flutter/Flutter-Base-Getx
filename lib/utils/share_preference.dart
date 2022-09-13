import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  static const String isLOGIN = "isLogin";

  static Future<bool> isLogin() async {
    final p = await prefs;
    return p.getBool(isLOGIN) ?? false;
  }

  static Future setLogin(bool value) async {
    final p = await prefs;
    return p.setBool(isLOGIN, value);
  }

  static Future clearPref() async {
    final p = await prefs;
    return p.clear();
  }
}
