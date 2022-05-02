import 'package:shared_preferences/shared_preferences.dart';

Future<String> getStringValue(String key) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString(key) ?? "";
}

Future<void> storeStringValue(String key, String value) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.setString(key, value);
}

Future<bool> getBoolValue(
  String key,
) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getBool(key) ?? false;
}

Future<void> storeBoolValue(String key, bool value) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.setBool(key, value);
}

Future<int> getIntValue(
  String key,
) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getInt(key);
}

Future<void> StoreIntValue(String key, int value) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.setInt(key, value);
}
