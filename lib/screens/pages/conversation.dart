import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/message_model.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/util/user_model.dart';
import 'package:flutter_stor/widgets/replay.dart';

import 'package:provider/provider.dart';

class Conver extends StatefulWidget {
  Conver({Key? key}) : super(key: key);

  @override
  _ConverState createState() => _ConverState();
  User? user;
}

class _ConverState extends State<Conver> {
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
          title: ListTile(
            leading: Stack(
              children: [
                Image.asset(
                  'assets/image/Rectangle 156.png',
                  height: 40.h,
                  width: 40.w,
                ),
                Positioned(
                  right: 5,
                  child: Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        color: Style.greenColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Style.whiteColor)),
                  ),
                )
              ],
            ),
            title: Text(
              'Kaiya Mango',
              style: provider.mymode ? Style.dark15 : Style.leghit15,
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
            trailing: InkWell(
              onTap: () {},
              child: Container(
                height: 26.h,
                width: 26.w,
                decoration: BoxDecoration(
                    color: Style.whiteColor,
                    borderRadius: BorderRadius.circular(4.r),
                    image: DecorationImage(
                      image: AssetImage('assets/icon/call copy.png'),
                    )),
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: provider.mymode ? Colors.black : Colors.white,
        ),
        body: Stack(
          children: [
            Container(
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, int index) {
                    final message = messages[index];
                    bool isme = message.sender!.id == currentUser.id;
                    return Column(
                      crossAxisAlignment: isme
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: messages[index].text != ''
                              ? Column(
                                  crossAxisAlignment: isme
                                      ? CrossAxisAlignment.end
                                      : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.only(top: 10.h),
                                        constraints:
                                            BoxConstraints(maxWidth: 150.w),
                                        decoration: BoxDecoration(
                                          borderRadius: isme
                                              ? BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(15.r),
                                                  topRight:
                                                      Radius.circular(15.r),
                                                  bottomLeft:
                                                      Radius.circular(15.r),
                                                )
                                              : BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(15.r),
                                                  topRight:
                                                      Radius.circular(15.r),
                                                  bottomRight:
                                                      Radius.circular(15.r),
                                                ),
                                          color: isme
                                              ? Style.primaryColor
                                              : Style.greyColor,
                                        ),
                                        child: Text(
                                          message.text,
                                          style: Style.blackButtonText,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Row(
                                        mainAxisAlignment: isme
                                            ? MainAxisAlignment.end
                                            : MainAxisAlignment.start,
                                        children: [],
                                      ),
                                    ),
                                  ],
                                )
                              : message.image != null
                                  ? Padding(
                                      padding:isme
                                          ? EdgeInsets.only(right: 20)
                                          : EdgeInsets.only(left: 20),
                                      child: Image.asset(
                                          'assets/image/Rectangle161.png'),
                                    )
                                  : Container(),
                        ),
                        Padding(
                          padding: isme
                              ? EdgeInsets.only(right: 20)
                              : EdgeInsets.only(left: 20),
                          child: Text(
                            message.time.toString(),
                            style: provider.mymode
                                ? Style.buttonText
                                : Style.whiteButtonText,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Positioned(
              bottom: 120,
              left: 0,
              child: Replay(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: Container(
                  width: double.infinity,
                  height: 47.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: provider.mymode
                            ? Style.whiteColor
                            : Style.greyColor,
                      )),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic,
                              color: provider.mymode
                                  ? Style.whiteColor
                                  : Style.greyColor,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.attach_file,
                                  color: provider.mymode
                                      ? Style.whiteColor
                                      : Style.greyColor)),
                        ],
                      ),
                      Container(
                        //height: ,
                        width: 200.w,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Type message...',
                              hintStyle: provider.mymode
                                  ? Style.blackButtonText
                                  : Style.greytext),
                        ),
                      ),
                      Container(
                        height: 39.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Style.whiteColor,
                            image: DecorationImage(
                                image: AssetImage('assets/icon/Send.png'))),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
