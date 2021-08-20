import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/custom_animation_bottom_bar.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Image.asset(
              ('assets/image/paner_name.png'),
              height: 30.h,
              width: 107.w,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 22.h),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: provider.mymode ? Colors.white : Colors.black,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: provider.mymode ? Colors.white : Colors.black,
                        size: 30,
                      )),
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 155.w),
                  child: Image.asset(
                    'assets/image/photo_profile.png',
                    height: 64.h,
                    width: 64.w,
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Text(
                  'Ann Stanton',
                  style: provider.mymode
                      ? Style.listExpandedstyledark
                      : Style.listExpandedstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pro Seller',
                      style: Style.pinki,
                    ),
                    Icon(
                      Icons.verified,
                      size: 16.sp,
                      color: Style.primaryColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 35.h,
                        width: 97.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: provider.mymode ? Style.grey : Style.grey6),
                        child: Center(
                            child: Text(
                          'Edit Profile',
                          style:provider.mymode ? Style.whiti : Style.gry,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: provider.mymode ? Style.grey : Style.grey6),
                        child: Center(child: Icon(Icons.settings,color:  provider.mymode ? Style.whiteColor : Style.blackColor,)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
