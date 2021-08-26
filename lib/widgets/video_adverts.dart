import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/util/style.dart';

class CustomContainer extends StatelessWidget {
  Widget? child;
  CustomContainer({Key? key, this.child}) : super(key: key);

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
                borderRadius: BorderRadius.circular(24.r),
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/image/watch.png'),
                    fit: BoxFit.cover)),
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
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Style.primaryColor,
                        size: 15.sp,
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
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: Style.whiteColor,
                        size: 15.sp,
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
            right: 0.w,
            top: 0.h,
            child: Container(
              height: 31.h,
              width: 67.w,
              decoration: BoxDecoration(
                  color: Style.grey4Color,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r))),
              child: child,
            ),
          ),
          Positioned(
            bottom: 1,
            child: Container(
              height: 53.h,
              width: 258.w,
              decoration: BoxDecoration(
                  color: Style.black25,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r))),
              child: Padding(
                padding: EdgeInsets.only(left: 14.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'I want to sell this awesome looki...',
                      overflow: TextOverflow.ellipsis,
                      style: Style.prodName,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            CustomImageViwe(image: 'assets/image/image1.png',),
                            Padding(
                              padding:  EdgeInsets.only(left: 10),
                              child: CustomImageViwe(image: 'assets/image/image2.png',),
                            ),
                        Padding(
                          padding:  EdgeInsets.only(left: 20),
                          child: CustomImageViwe(image: 'assets/image/image3.png',),
                        ),
                          ],
                        ),
                        
                        
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          '+100 interested',
                          style: Style.whiti,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class CustomImageViwe extends StatelessWidget {
  String? image;
CustomImageViwe({ Key? key,this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      width: 16.w,
      decoration: BoxDecoration(
          border: Border.all(color: Style.whiteColor),
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(image!), fit: BoxFit.cover)));
  }
}