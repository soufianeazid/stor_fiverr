import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15.w),
      child: Container(
        height: 158.h,
        width: 258.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: Colors.black),
      ),
    );
  }
}
