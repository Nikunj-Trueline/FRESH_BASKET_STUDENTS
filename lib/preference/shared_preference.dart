import 'package:shared_preferences/shared_preferences.dart';

class PreferenceServices {

   static const String isLoginKey = "isLogin4";
   static const String onboardingKey = "onBoardingKey";


  static SharedPreferences? pref;



  static Future<void> onInit() async {
    pref = await SharedPreferences.getInstance();
  }



 static Future<void> setData({required String key, required dynamic value}) async {
    if (value is int) {
      await pref!.setInt(key, value);
    } else if (value is bool) {
      await pref!.setBool(key, value);
    } else if (value is String) {
      await pref!.setString(key, value);
    } else {
      print("DATA IS NOT VALID");
    }
  }

  static bool getBoolData({required String key}) {
    return pref!.getBool(key) ?? false;
  }

  static String getStringData({required String key}) {
    return pref!.getString(key) ?? "";
  }
}
