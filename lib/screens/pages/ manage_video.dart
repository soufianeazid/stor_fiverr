import 'package:flutter/material.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/%20manage_video.dart';
import 'package:flutter_stor/screens/pages/edit%20_profile.dart';
import 'package:flutter_stor/screens/pages/setting_screen.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/container_dyal_profil.dart';
import 'package:flutter_stor/widgets/custom_animation_bottom_bar.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/widgets/custom_row.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:provider/provider.dart';

class ManageVideo extends StatefulWidget {
  const ManageVideo({Key? key}) : super(key: key);

  @override
  _ManageVideoState createState() => _ManageVideoState();
}

class _ManageVideoState extends State<ManageVideo> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Style.dark : Style.whiteColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: provider.mymode ? Style.dark : Style.whiteColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: provider.mymode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          ),
          title: Text(
            'All Video Adverts',
            style: provider.mymode ? Style.headingTextDark : Style.headingText,
          ),
        ),
        body: SingleChildScrollView(
          //scrollDirection: Axis.vertical,
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
                  style: provider.mymode
                      ? Style.buttonText
                      : Style.whiteButtonText,
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
                      CustomContainer(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Style.whiteColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      CustomContainer(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Style.whiteColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      CustomContainer(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Style.whiteColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              CustomGridViwe()
            ],
          ),
        ),
      ),
    );
  }
}
