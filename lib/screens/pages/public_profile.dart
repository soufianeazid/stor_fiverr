import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
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

class PublicProfile extends StatefulWidget {
  const PublicProfile({Key? key}) : super(key: key);

  @override
  _PublicProfileState createState() => _PublicProfileState();
}

class _PublicProfileState extends State<PublicProfile> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Style.dark : Colors.white,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          size: 40.sp,
                          color: provider.mymode
                              ? Style.whiteColor
                              : Style.blackColor,
                        )),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            (provider.mymode
                                ? 'assets/icon/star.png'
                                : 'assets/icon/star_black.png'),
                            height: 25.h,
                            width: 25.w,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150.w),
                  child: Image.asset(
                    'assets/image/photo_profile.png',
                    height: 64.h,
                    width: 64.w,
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150.w),
                  child: Text(
                    'Ann Stanton',
                    style: provider.mymode
                        ? Style.listExpandedstyledark
                        : Style.listExpandedstyle,
                  ),
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
                    Container(
                      height: 38.h,
                      width: 124.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: provider.mymode
                                ? Style.whiteColor
                                : Style.greyColor,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            provider.mymode
                                ? 'assets/icon/messenger.png'
                                : 'assets/icon/messenger_copy.png',
                            height: 16.h,
                            width: 16.w,
                          ),
                          Text('Chat',
                              style: provider.mymode
                                  ? Style.whiti
                                  : Style.hinttext)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 19.w,
                    ),
                    Container(
                      height: 38.h,
                      width: 124.w,
                      decoration: BoxDecoration(
                        color: Style.primaryColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon/call.png',
                            height: 16.h,
                            width: 16.w,
                          ),
                          Text(
                            'Call Now!',
                            style: Style.whiti,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    'Seller Bio',
                    style: provider.mymode
                        ? Style.listExpandedstyledark
                        : Style.listExpandedstyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.w),
                  child: Text(
                    'Hey there Adlynck community, I am a good seller and I\nsell good and quality products. Just DM!',
                    style: provider.mymode ? Style.whiti : Style.gry,
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ProfileCuntent(
                        image: provider.mymode
                            ? 'assets/image/dark_vid.png'
                            : 'assets/image/light_vid.png',
                        text: 'Video Adverts 20',
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: ProfileCuntent(
                        image: 'assets/image/Vector-4.png',
                        text: 'Requested 05',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 23.h, left: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Links',
                        style: provider.mymode
                            ? Style.listExpandedstyledark
                            : Style.listExpandedstyle,
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomRowButton(
                          image: 'assets/icon/facebook.png',
                          text: 'facebook',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomRowButton(
                          image: 'assets/icon/instagram.png',
                          text: 'instagram',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomRowButton(
                          image: 'assets/icon/pinterest.png',
                          text: 'pinterest',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomRowButton(
                          image: 'assets/icon/Group-4.png',
                          text: 'We Heart It',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          'More Info',
                          style: provider.mymode
                              ? Style.listExpandedstyledark
                              : Style.listExpandedstyle,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomRowButton(
                          image: provider.mymode
                              ? 'assets/icon/globe.png'
                              : 'assets/icon/globe_black.png',
                          text: 'http://www.website.com',
                        ),
                      ),
                      CustomRow(
                        image: provider.mymode
                            ? 'assets/icon/place.png'
                            : 'assets/icon/place_black.png',
                        text: 'Greater Accra',
                      ),
                      CustomRow(
                        image: provider.mymode
                            ? 'assets/icon/info.png'
                            : 'assets/icon/info_black.png',
                        text: 'Joined Aug 11, 2021',
                      ),
                      CustomRow(
                        image: provider.mymode
                            ? 'assets/icon/eye.png'
                            : 'assets/icon/eye-black.png',
                        text: '204,545,645 views',
                      ),
                      CustomRow(
                        image: provider.mymode
                            ? 'assets/icon/star.png'
                            : 'assets/icon/star_black.png',
                        text: '232,345,343 Stars',
                      ),
                      SizedBox(
                        height: 100.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
