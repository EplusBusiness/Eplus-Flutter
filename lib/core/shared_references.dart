import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class SharedPreferencesUtil {
  static const String _PREF_TOKEN = '_pref_token';
  static const String _USER_ID = '_pref_user_id';
  static const String _USER_NAME = '_pref_user_name';
  static const String _PREF_COMPANY = '_pref_company';
  static SharedPreferences prefs = Get.find();

  static saveString(String key, String value) async {
    prefs.setString(key, value);
  }

  static Future<String> getString(String key,
      {String defaultValue = ''}) async {
    return prefs.getString(key) ?? defaultValue;
  }

  static Future<bool> getBoolean(String key,
      {bool defaultValue = false}) async {
    return prefs.getBool(key) ?? defaultValue;
  }

  static saveToken(String token) {
    saveString(_PREF_TOKEN, token);
  }

  static Future<String> getToken() async {
    return await getString(_PREF_TOKEN);
  }

  static saveUserId(String userId) {
    saveString(_USER_ID, userId);
  }

  static Future<String> getUserName() async {
    return await getString(_USER_NAME);
  }

  static saveUserName(String username) {
    saveString(_USER_NAME, username);
  }

  static Future<String> getCompany() async {
    return await getString(_PREF_COMPANY);
  }

  static saveCompany(String company) {
    saveString(_PREF_COMPANY, company);
  }

  static Future<String> getUserId() async {
    return await getString(_USER_ID);
  }

  static resetDataLocal() {
    saveString(_USER_NAME, '');
    saveToken('');
    saveUserName('');
  }
}
