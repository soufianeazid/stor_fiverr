import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/notification.dart';
import 'package:flutter_stor/screens/pages/search.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                CustomAppBar(),
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
                  padding: EdgeInsets.symmetric(horizontal: 69.w),
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
                                  child: children1(
                                      FontAwesomeIcons.comment, 'Chat'),
                                  child1:
                                      children1(Icons.phone_outlined, 'Call'),
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
                                  child: children1(
                                      FontAwesomeIcons.comment, 'Chat'),
                                  child1:
                                      children1(Icons.phone_outlined, 'Call'),
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
                                  child: children1(
                                      FontAwesomeIcons.comment, 'Chat'),
                                  child1:
                                      children1(Icons.phone_outlined, 'Call'),
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
                                  child: children1(
                                      FontAwesomeIcons.comment, 'Chat'),
                                  child1:
                                      children1(Icons.phone_outlined, 'Call'),
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
                                  child: children1(
                                      FontAwesomeIcons.comment, 'Chat'),
                                  child1:
                                      children1(Icons.phone_outlined, 'Call'),
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
                                  child: children1(
                                      FontAwesomeIcons.comment, 'Chat'),
                                  child1:
                                      children1(Icons.phone_outlined, 'Call'),
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
                                SizedBox(height: 150.h,)
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
                                 SizedBox(height: 150.h,)
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
                        Text('Ann Stanton',style: provider.mymode?Style.blackButtonText:Style.blacktext,),
                        SizedBox(
                          width: 10.w,
                        ),
                        Row(
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
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.verified,
                          size: 16.sp,
                          color: Style.primaryColor,
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
                        onTap: () {},
                        child: widget.child!,
                      ),
                      SizedBox(
                        width: 15.w,
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
          InkWell(child: child2),
        ],
      ),
    ),
  );
}

Widget children1(IconData child1, String child2) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          child1,
          size: 20.sp,
          color: Style.primaryColor,
        ),
        SizedBox(width: 10.w,),
        Text(child2, style: Style.pinki)
      ],
    ),
  );
}
