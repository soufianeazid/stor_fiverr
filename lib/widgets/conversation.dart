import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:provider/provider.dart';

class Conversation extends StatefulWidget {
  String? image;
   IconData? imagev;
  String? name = '';
  String? message = '';
  String? date = '';
 String? verfy;
 

  Conversation(
      {Key? key,
      this.image,
      this.date,
   this.imagev,
      this.message,
      this.name,
      this.verfy,
      })
      : super(key: key);

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
   
 
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Container(
          height: 65.h,
          //width: double.infinity,
          child: Row(

             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      widget.image!,
                    ),
                  ),
                  Positioned(
                    top: 1.h,
                    right: 1.w,
                    child: Container(
                      height: 13.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Style.green2,
                          border: Border.all(color: Style.whiteColor)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.name!,
                        style: provider.mymode
                            ? Style.listExpandedstyledark
                            : Style.listExpandedstyle,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.verfy!,
                            style: Style.pinki,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            widget.imagev,
                            color: Style.primaryColor,
                            size: 17.sp,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.message!,
                        style: provider.mymode ? Style.whiti : Style.gry,
                      ),
                    ],
                  ),
                ],
              ),
             SizedBox(
               width: 70.w,
             ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 10.h,),
                  Text(
                    widget.date!,
                    style: provider.mymode ? Style.whiti : Style.gry,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Style.primaryColor),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
