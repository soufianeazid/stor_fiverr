import 'package:flutter/material.dart';
import 'package:flutter_stor/util/save.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themeprov extends ChangeNotifier {
  static late SharedPreferences prefs;

  Themeprov() {
    getpref();
  }
  bool _busy = false;
  bool get busy => _busy;

  getpref() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("darkmode") != true &&
        prefs.getBool("darkmode") != false) {
      Save().setdarkmode(false);
    } else {
      mode = await Save().getdarkmode();
      notifyListeners();
    }
  }

  setBusy(bool value) {
    _busy = value;
    // print(value);
    notifyListeners();
  }

  bool mode = false;
  bool get mymode => mode;

  setmode(bool value) {
    mode = value;
    Save().setdarkmode(value);
    // print(value);
    notifyListeners();
  }
}
