import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';


import 'package:provider/provider.dart';

class Replay extends StatelessWidget {
  const Replay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Container(
            height: 150.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    image: AssetImage('assets/image/Rectangle161.png'))),
          ),
        ),
        Positioned(
          bottom: 15.h,
          right: 5.w,
          child: Container(
            height: 30.h,
            constraints: BoxConstraints(maxWidth: 90.w),
            decoration: BoxDecoration(
              color: Style.greyColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
            ),
            child: Center(
              child: Text('Lovely', style: Style.blackButtonText),
            ),
          ),
        ),
        Positioned(
          bottom: -5.h,
          left: 25,
          child: Text(
            '12:07 PM',
            style: provider.mymode ? Style.buttonText : Style.whiteButtonText,
          ),
        )
      ],
    );
  }
}
