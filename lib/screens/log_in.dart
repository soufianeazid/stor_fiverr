import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 103.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                child: Image.asset(
                  'assets/image/paner_name.png',
                  height: 60.h,
                  width: 215.w,
                ),
              )
              // Text('')
            ],
          ),
        ),
      ),
    );
  }
}
