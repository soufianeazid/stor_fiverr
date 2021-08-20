import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/provider_setup.dart';
import 'package:flutter_stor/screens/log/log_in.dart';
import 'package:flutter_stor/screens/log/login_or_logup.dart';
import 'package:flutter_stor/screens/log/log_up.dart';
import 'package:flutter_stor/screens/pages/home.dart';
import 'package:flutter_stor/screens/pages/my_home_page.dart';
import 'package:flutter_stor/screens/verification/email_verfy.dart';
import 'package:flutter_stor/screens/verification/phone_verfy.dart';
import 'package:flutter_stor/screens/reset_pass/new_pass.dart';
import 'package:flutter_stor/screens/reset_pass/rest_pass.dart';
import 'package:flutter_stor/util/save.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    shared();
  }

  shared() async {
    Save.prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: ScreenUtilInit(
        builder: () => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        ),
        designSize: const Size(375, 812),
      ),
    );
  }
}
