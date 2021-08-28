import 'package:flutter/material.dart';
import 'package:flutter_stor/screens/pages/home.dart';
import 'package:flutter_stor/screens/pages/inbox.dart';
import 'package:flutter_stor/screens/pages/profile.dart';
import 'package:flutter_stor/screens/pages/request.dart';
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
                containerHeight: 60.h,
                selectedIndex: _currentIndex,
                showElevation: true,
                itemCornerRadius: 24.r,
                curve: Curves.easeIn,
                onItemSelected: (index) {
                 if(index!=2)setState(() => _currentIndex = index);
                },
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
        ],
      ),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Home(),
      Inbox(),
      Container(),
      Request(),
      Profile(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
