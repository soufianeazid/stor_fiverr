import 'package:flutter/material.dart';
import 'package:flutter_stor/screens/pages/home.dart';
import 'package:flutter_stor/screens/pages/profile.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/custom_animation_bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          getBody(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 5.h),
              color: Colors.transparent,
              child: CustomAnimatedBottomBar(
                containerHeight: 60,
                selectedIndex: _currentIndex,
                showElevation: true,
                itemCornerRadius: 24,
                curve: Curves.easeIn,
                onItemSelected: (index) =>
                    setState(() => _currentIndex = index),
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                    activeColor: Style.primaryColor,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.message),
                    title: Text('Inbox'),
                    activeColor: Style.primaryColor,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(icon: Icon(null), title: Text('')),
                  BottomNavyBarItem(
                    icon: Icon(Icons.whatshot),
                    title: Text(
                      'Request ',
                    ),
                    activeColor: Style.primaryColor,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Profil'),
                    activeColor: Style.primaryColor,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:  EdgeInsets.only(bottom: 30.h),
              child: Container(
                height: 38.h,
                width: 38.w,
                decoration: BoxDecoration(
                    color: Style.primaryColor, shape: BoxShape.circle),
                child: Icon(
                  Icons.add,
                  size: 16.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Home(),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Users",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Messages",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Settings",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Profile(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
