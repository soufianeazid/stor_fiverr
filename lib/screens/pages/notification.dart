import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
        appBar: AppBar(
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
            "Notifications",
            style: provider.mymode ? Style.headingTextDark : Style.headingText,
          ),
          elevation: 0,
          backgroundColor: provider.mymode ? Colors.black : Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                            color: provider.mymode
                                ? Style.k7aljdid
                                : Style.greyColor),
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 17.w, vertical: 9.h),
                          child: Text(
                            'All activity',
                            style: provider.mymode
                                ? Style.headingTextDark
                                : Style.headingText,
                          ),
                        ))),
                  ),
                  ScrolList(
                    name: 'Likes',
                  ),
                  ScrolList(
                    name: 'Comments',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New(64)',
                    style: provider.mymode
                        ? Style.headingTextDark1
                        : Style.buttonText2,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  SampelNotif(),
                  ActionNotif(),
                  SampelNotif(),
                  ActionNotif(),
                  SampelNotif(),
                  SampelNotif(),
                  SizedBox(height: 150.h,)
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class ScrolList extends StatelessWidget {
  String? name;
  ScrolList({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.r),
              color: provider.mymode ? Style.k7aljdid : Style.greyColor),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name!,
                  style: provider.mymode
                      ? Style.headingTextDark
                      : Style.headingText,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: Style.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      '26',
                      style: Style.prodName,
                    ),
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class SampelNotif extends StatelessWidget {
  const SampelNotif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        height: 75.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: provider.mymode ? Style.k7aljdid : Style.greyColor),
        child: ListTile(
          leading: Image.asset('assets/image/per4.png'),
          title: Row(
            children: [
              Text('Ella Mianairuia',
                  style: provider.mymode
                      ? Style.headingTextDark1
                      : Style.buttonText2),
              SizedBox(
                width: 5.w,
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
                  ),
                ],
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Expanded(
                child: Text(
                  'Ella Mianairuia Likedyour video advert.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: provider.mymode ? Style.g2 : Style.g1,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  '5 sec',
                  style: provider.mymode ? Style.g2 : Style.g1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionNotif extends StatelessWidget {
  const ActionNotif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        height: 113.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: provider.mymode ? Style.k7aljdid : Style.greyColor),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('assets/image/per4.png'),
              title: Row(
                children: [
                  Text('Ella Mianairuia',
                      style: provider.mymode
                          ? Style.headingTextDark1
                          : Style.buttonText2),
                  SizedBox(
                    width: 5.w,
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
                      ),
                    ],
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Ella Mianairuia Likedyour video advert.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: provider.mymode ? Style.g2 : Style.g1,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Text(
                      '5 sec',
                      style: provider.mymode ? Style.g2 : Style.g1,
                    ),
                  ),
                ],
              ),
              trailing: Container(
                height: 65.h,
                width: 65.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                        image: AssetImage('assets/image/1.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 64.w,
                ),
                InkWell(
                  onTap: (){},
                  child: Image.asset('assets/icon/heart.png'),
                ),
                SizedBox(
                  width: 13.w,
                ),
                InkWell(
                  onTap: (){},
                  child: Image.asset('assets/icon/vector.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
