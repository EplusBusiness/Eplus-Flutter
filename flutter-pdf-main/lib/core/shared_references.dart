import 'package:makepdfs/models/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedPreferencesUtil {
  static const String _PREF_TOKEN = '_pref_token';
  static const String _USER_INFO = '_pref_user_id';
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
    saveString(_USER_INFO, userId);
  }

  static Future<String> getUserId() async {
    final String userId = await getString(_USER_INFO);
    return userId;
  }
}