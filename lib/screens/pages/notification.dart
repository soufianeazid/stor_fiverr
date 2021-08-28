import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                                    : Style.gry12),
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
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
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
                      SizedBox(
                        height: 150.h,
                      )
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
              color: provider.mymode ? Style.k7aljdid : Style.gry12),
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
        height: 80.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: provider.mymode ? Style.k7aljdid : Style.gry12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/bill-gates.jpg'),
                          fit: BoxFit.cover)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    SizedBox(
                      height: 10.h,
                    ),
                    Wrap(
                      children: [
                        Text(
                          'Ella Mianairuia Likedyour video advert.',
                          //overflow: TextOverflow.clip,
                          maxLines: 1,
                          softWrap: true,
                          style: provider.mymode ? Style.g2 : Style.g1,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '5 sec',
                          style: provider.mymode ? Style.g2 : Style.g2,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
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
        height: 170.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: provider.mymode ? Style.k7aljdid : Style.gry12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/bill-gates.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text('Ella Mianairuia',
                            style: provider.mymode
                                ? Style.headingTextDark1
                                : Style.buttonText2),
                        SizedBox(
                          width: 5.w,
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
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 200.w,
                      height: 60.h,
                      child: Wrap(
                        children: [
                          Text(
                            'Commented: Great content, without adoubt I am your big fan, you get greatpictures in incredible places.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: provider.mymode ? Style.g2 : Style.g1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                ' 25 min',
                                style: provider.mymode ? Style.g2 : Style.g2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      height: 90.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          image: DecorationImage(
                              image: AssetImage('assets/image/1.png'),
                              fit: BoxFit.cover)),
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
                SizedBox(
                  width: 50.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Style.primaryColor,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.commentDots,
                      color: Style.primaryColor,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
