import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/main.dart';
import 'package:flutter_stor/util/save.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/expandable_list.dart';
import 'package:flutter_stor/util/switchmsrou9a.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool valuetoggle = false;

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Scaffold(
      backgroundColor: provider.mymode ? Colors.black : Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: provider.mymode ? Colors.white : Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Settings",
          style: provider.mymode ? Style.headingTextDark : Style.headingText,
        ),
        elevation: 0,
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            ExpandableList(
              icon: Icons.ac_unit,
              name: 'Push Notification',
              wlidat: [],
            ),
            ExpandableList(
              icon: Icons.ac_unit,
              name: 'Invite  Your  Friends',
              wlidat: [],
            ),
            ExpandableList(
              icon: Icons.ac_unit,
              name: 'Inbox Settings',
              wlidat: [],
            ),
            ListTile(
              leading: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Style.pinkColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Posts You’ve Liked',
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
            ),
            ListTile(
              leading: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Style.pinkColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Delete My Account',
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
            ),
            ListTile(
              leading: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Style.pinkColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Request Verification',
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            ListTile(
              title: Text(
                "Dark Mode",
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
              trailing: Container(
                width: 50.w,
                child: FlutterSwitch(
                  value: provider.mymode,
                  onToggle: (bol) {
                    provider.setmode(bol);
                  },
                  activeColor: Style.primaryColor,
                  inactiveColor: Style.greyColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                color: Colors.black54,
              ),
            ),
            ListTile(
              leading: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Style.pinkColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Terms and Conditions',
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
              trailing: Icon(
                Icons.outbond,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 35.h),
            Container(
              alignment: Alignment.center,
              child: Container(
                height: 35.h,
                width: 50.w,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: Style.primaryColor,
                    width: 2,
                  )),
                ),
                child: Text(
                  "Logout",
                  style: Style.logoutText,
                ),
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
