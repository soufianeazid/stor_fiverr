import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/util/style.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Stack(
        children: [
          Container(
            height: 158.h,
            width: 258.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.black,
                image:
                    DecorationImage(image: AssetImage('assets/image/watch.png'),fit: BoxFit.cover)),
          ),
          Padding(
          padding: EdgeInsets.only(left: 9.w, top: 9.h),
          child: Row(
            children: [
              Container(
                height: 19.h,
                width: 41.w,
                decoration: BoxDecoration(
                  color: Style.whiteColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Style.primaryColor,
                      size: 15,
                    ),
                    Text(
                      '2.5 K',
                      style: Style.smallText,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 19.h,
                width: 41.w,
                decoration: BoxDecoration(
                  color: Style.blackColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: Style.whiteColor,
                      size: 15,
                    ),
                    Text(
                      '2.5 K',
                      style: Style.smallWhiteText,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            height: 31.h,
            width: 67.w,
            decoration: BoxDecoration(
                color: Style.grey4Color,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Center(
                child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Style.whiteColor,
                size: 20,
              ),
            )),
          ),
        ),
        Positioned(
          bottom: 1,
          child: Container(
            height: 53.h,
            width:258.w,
            decoration: BoxDecoration(
              color: Style.black25,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
                    child: Column(
                      children: [
                        Text('Text prodNume',overflow: TextOverflow.ellipsis,style: Style.prodName,),
                      ],
                    ),
          ),
        )
        ],
      ),
    );
  }
}
