import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/edit%20_profile.dart';
import 'package:flutter_stor/screens/pages/search.dart';
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

class Request extends StatefulWidget {
  Request({
    Key? key,
  }) : super(key: key);

  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  late final List<bool> isSelected;
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: provider.mymode ? Style.dark : Colors.white,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
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
                              color: provider.mymode
                                  ? Style.whiteColor
                                  : Style.dark,
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
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Requests',
                        style: provider.mymode
                            ? Style.headingTextDark1
                            : Style.buttonText2,
                      ),
                      Text(
                        '1243 Results',
                        style: provider.mymode
                            ? Style.blackButtonText
                            : Style.whiteButtonText,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 69),
                  child: Container(
                    height: 46.h,
                    width: 237.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: provider.mymode
                            ? Style.blackColor
                            : Style.colorGrey),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TabBar(
                        unselectedLabelColor:
                            provider.mymode ? Style.whiteColor : Style.bpdy,
                        labelColor: Style.primaryColor,
                        indicator: BoxDecoration(
                            color:
                                provider.mymode ? Style.dark : Style.whiteColor,
                            borderRadius: BorderRadius.circular(11.r)),
                        tabs: [
                          Tab(
                            text: 'All',
                          ),
                          Tab(
                            text: 'My Requests',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    height: 600.h,
                    child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: ListView(
                              children: [
                                CustomCuntent(
                                  child: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(Icons.chat_outlined,
                                        size: 15.sp, color: Style.primaryColor),
                                    Text('Chat', style: Style.pinki),
                                  ),
                                  child1: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(
                                      Icons.call,
                                      size: 15.sp,
                                      color: Style.primaryColor,
                                    ),
                                    Text('Call', style: Style.pinki),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                ),
                                CustomCuntent(
                                  child: InkWell(
                                    onTap: () {},
                                    child: children(
                                      67.w,
                                      Style.grey6,
                                      Icon(Icons.chat_outlined,
                                          size: 15.sp,
                                          color: Style.primaryColor),
                                      Text('Chat', style: Style.pinki),
                                    ),
                                  ),
                                  child1: InkWell(
                                    onTap: () {},
                                    child: children(
                                      67.w,
                                      Style.grey6,
                                      Icon(
                                        Icons.call,
                                        size: 15.sp,
                                        color: Style.primaryColor,
                                      ),
                                      Text('Call', style: Style.pinki),
                                    ),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                ),
                                CustomCuntent(
                                  child: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(Icons.chat_outlined,
                                        size: 15.sp, color: Style.primaryColor),
                                    Text('Chat', style: Style.pinki),
                                  ),
                                  child1: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(
                                      Icons.call,
                                      size: 15.sp,
                                      color: Style.primaryColor,
                                    ),
                                    Text('Call', style: Style.pinki),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                ),
                                CustomCuntent(
                                  child: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(Icons.chat_outlined,
                                        size: 15.sp, color: Style.primaryColor),
                                    Text('Chat', style: Style.pinki),
                                  ),
                                  child1: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(
                                      Icons.call,
                                      size: 15.sp,
                                      color: Style.primaryColor,
                                    ),
                                    Text('Call', style: Style.pinki),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: ListView(
                              children: [
                                SizedBox(
                                  height: 22.h,
                                ),
                                CustomCuntent(
                                  child: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(
                                      Icons.edit,
                                      size: 15.sp,
                                    ),
                                    Text('Edit'),
                                  ),
                                  child1: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(Icons.delete, size: 15.sp),
                                    Text(
                                      'Delete',
                                    ),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                ),
                                CustomCuntent(
                                  child: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(
                                      Icons.edit,
                                      size: 15.sp,
                                    ),
                                    Text('Edit'),
                                  ),
                                  child1: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(Icons.delete, size: 15.sp),
                                    Text(
                                      'Delete',
                                    ),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                ),
                                CustomCuntent(
                                  child: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(
                                      Icons.edit,
                                      size: 15.sp,
                                    ),
                                    Text('Edit'),
                                  ),
                                  child1: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(Icons.delete, size: 15.sp),
                                    Text(
                                      'Delete',
                                    ),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                ),
                                CustomCuntent(
                                  child: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(
                                      Icons.edit,
                                      size: 15.sp,
                                    ),
                                    Text('Edit'),
                                  ),
                                  child1: children(
                                    67.w,
                                    Style.grey6,
                                    Icon(Icons.delete, size: 15.sp),
                                    Text(
                                      'Delete',
                                    ),
                                  ),
                                  child2: children(
                                    59.w,
                                    Style.greenColor,
                                    Text(
                                      'GHC',
                                      style: Style.blackButtonText,
                                    ),
                                    Text(
                                      '350',
                                      style: Style.blackButtonText,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCuntent extends StatefulWidget {
  Widget? child;
  Widget? child1;
  Widget? child2;
  CustomCuntent({Key? key, this.child, this.child1, this.child2})
      : super(key: key);

  @override
  _CustomCuntentState createState() => _CustomCuntentState();
}

class _CustomCuntentState extends State<CustomCuntent> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding: EdgeInsets.only(top: 19.h),
      child: Container(
        width: double.infinity,
        //height: 150.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: provider.mymode ? Style.blackColor : Style.whiteColor,
            boxShadow: [
              provider.mymode
                  ? BoxShadow()
                  : BoxShadow(
                      color: Color(0xFFF3F3F3),
                      spreadRadius: -1,
                      blurRadius: 24,
                      offset: Offset(0, 4), // changes position of shadow
                    )
            ]),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 13.h),
              child: ListTile(
                leading: Image.asset(
                  'assets/image/photo_profile.png',
                  height: 40.h,
                  width: 40.w,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Ann Stanton'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Row(
                          children: [
                            Text(
                              'Pro Seller',
                              style: Style.pinki,
                            ),
                            Image.asset(
                              'assets/icon/Vector-4.png',
                              height: 12.h,
                              width: 12.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon/circle_check.png',
                          height: 13.h,
                          width: 13.w,
                        ),
                        Text(
                          'Negotiable',
                          style: Style.pinki,
                        ),
                      ],
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Text(
                      'Need an Apple iphone X asap! hit me up let’s talk some numbers.',
                      style: provider.mymode
                          ? Style.blackButtonText
                          : Style.greytext),
                ),
                trailing: Text(
                  '1 d ago',
                  style: provider.mymode ? Style.whiti : Style.gry,
                ),
              ),
            ),
            // SizedBox(height:15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                       onTap: (){},
                        child: widget.child!,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: widget.child1!,
                      ),
                    ],
                  ),
                  widget.child2!,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget children(double width, Color color, Widget child1, child2) {
  return Padding(
    padding: EdgeInsets.only(bottom: 13.h),
    child: Container(
      height: 24.h,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(child: child1),
          SizedBox(width: 5.w),
          child2,
        ],
      ),
    ),
  );
}
