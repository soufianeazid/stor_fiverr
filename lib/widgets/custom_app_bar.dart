import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/notification.dart';
import 'package:flutter_stor/screens/pages/search.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  ('assets/image/paner_name.png'),
                  height: 30.h,
                  width: 107.w,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Search()));
                        },
                        icon: Icon(
                          Icons.search,
                          color: provider.mymode ? Colors.white : Colors.black,
                          size: 30.sp,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()));
                        },
                        icon: Icon(
                          Icons.notifications_none,
                          color: provider.mymode ? Colors.white : Colors.black,
                          size: 30.sp,
                        )),
                  ],
                ),
              ],
            ),
          );
  }
}