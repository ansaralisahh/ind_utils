import 'package:shared_preferences/shared_preferences.dart';

class AppData {
  static Future<void> setValue(String key, dynamic value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    if (value is bool) {
      await pref.setBool(key, value);
    } else if (value is String) {
      await pref.setString(key, value);
    } else if (value is double) {
      await pref.setDouble(key, value);
    } else if (value is int) {
      await pref.setInt(key, value);
    }
  }

  static Future<dynamic> getValue(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.get(key);
  }
}
