import 'package:shared_preferences/shared_preferences.dart';

class Save {
  static bool mode = false;

  static late SharedPreferences prefs;

  getdarkmode() async {
    return prefs.getBool("darkmode");
  }

  setdarkmode(booll) async {
    print(booll);
    return await prefs.setBool("darkmode", booll);
  }
}
