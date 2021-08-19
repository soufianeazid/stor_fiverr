import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Style {
  //status Colors
  static final Color blackColor = Colors.black;
  static final Color whiteColor = Colors.white;
  static final Color greyColor = Color(0xFFBBBABA);
  static final Color blueColor = Color(0xFF2D9CDB);
  static final Color primaryColor = Color(0xFFFF3E57);
  static final Color greenColor = Color(0xFF82CA9A);
  static final Color primaryLightColor = Color(0xFFFFE1E5);
  static final Color headlineColor = Color(0xFF2F2F2F);
  static final Color grey4Color = Color(0xFFBDBDBD);
  static final Color pinkColor = Color(0xFFFFD9DE);

//textStyle
  static TextStyle headingText = TextStyle(
    fontFamily: 'karla',
    color: Colors.black,
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headingTextDark = TextStyle(
    fontFamily: 'karla',
    color: Colors.white,
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle listExpandedstyle = TextStyle(
    fontFamily: 'karla',
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle listExpandedstyledark = TextStyle(
    fontFamily: 'karla',
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle logoutText = TextStyle(
    fontFamily: 'karla',
    color: primaryColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    // decoration: TextDecoration.underline,
  );

  static TextStyle descreption = TextStyle(
    fontFamily: 'karla',
    color: Color(0xFFBDBDBD),
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle buttonText = TextStyle(
    fontFamily: 'karla',
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle whiteButtonText = TextStyle(
    fontFamily: 'karla',
    color: Color(0xFF717171),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle downText = TextStyle(
    fontFamily: 'karla',
    color: Color(0xFFBBBABA),
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle downBlueText = TextStyle(
    fontFamily: 'karla',
    color: Color(0xFF2D9CDB),
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle confermText = TextStyle(
    fontFamily: 'karla',
    color: Color(0xFF2D9CDB),
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
}
