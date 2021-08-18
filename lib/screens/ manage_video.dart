import 'package:flutter/material.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';

class ManageVideo extends StatefulWidget {
  const ManageVideo({Key? key}) : super(key: key);

  @override
  _ManageVideoState createState() => _ManageVideoState();
}

class _ManageVideoState extends State<ManageVideo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Style.whiteColor,
          leading: Icon(
            Icons.chevron_left,
            color: Style.blackColor,
            size: 40.sp,
          ),
          title: Text(
            'All Video Adverts',
            style: Style.headingText,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 21.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  '20 Video Adverts',
                  style: Style.whiteButtonText,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: double.infinity,
                height: 158.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomContainer(),
                      CustomContainer(),
                      CustomContainer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              //CustomGridViwe()
            ],
          ),
        ),
      ),
    );
  }
}
