import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/all_video_adverts.dart';
import 'package:flutter_stor/screens/pages/edit%20_profile.dart';
import 'package:flutter_stor/screens/pages/search.dart';
import 'package:flutter_stor/screens/pages/setting_screen.dart';
import 'package:flutter_stor/widgets/container_dyal_profil.dart';
import 'package:flutter_stor/widgets/custom_row.dart';
import 'package:flutter_stor/util/style.dart';
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
                    Image.asset(
                      ('assets/image/paner_name.png'),
                      height: 30.h,
                      width: 107.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              color:
                                  provider.mymode ? Colors.white : Colors.black,
                              size: 30.sp,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none,
                              color:
                                  provider.mymode ? Colors.white : Colors.black,
                              size: 30.sp,
                            )),
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfil()));
                      },
                      child: Container(
                        height: 35.h,
                        width: 97.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: provider.mymode ? Style.grey : Style.grey6),
                        child: Center(
                            child: Text(
                          'Edit Profile',
                          style: provider.mymode ? Style.whiti : Style.gry,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingScreen()));
                      },
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: provider.mymode ? Style.grey : Style.grey6),
                        child: Center(
                            child: Icon(
                          Icons.settings,
                          color: provider.mymode
                              ? Style.whiteColor
                              : Style.blackColor,
                        )),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AllVideoAdverts();
                            }));
                          },
                          child: ProfileCuntent(
                            image: provider.mymode
                                ? 'assets/image/dark_vid.png'
                                : 'assets/image/light_vid.png',
                            text: 'Video Adverts 20',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: ProfileCuntent(
                            image: 'assets/image/Vector-4.png',
                            text: 'Requested 05',
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          text: 'Facebook',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomRowButton(
                          image: 'assets/icon/instagram.png',
                          text: 'Instagram',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomRowButton(
                          image: 'assets/icon/pinterest.png',
                          text: 'Pinterest',
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
