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
    return ListTile(
    
      leading: Stack(
        children: [
          Image.asset(
            widget.image!,
          ),
          Positioned(
            top: 3,
            right: 1,
            child: Container(
              height: 10.h,
              width: 10.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Style.green2,
                  border: Border.all(color: Style.whiteColor)),
            ),
          )
        ],
      ),
      title: Row(
        children: [
          Text(
            widget.name!,
            style: provider.mymode
                ? Style.listExpandedstyledark
                : Style.listExpandedstyle,
          ),
          SizedBox(
            width: 10.w,
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
             Icon(widget.imagev,color: Style.primaryColor,size: 17.sp,)
            ],
          )
        ],
      ),
      subtitle: Text(
        widget.message!,
        style: provider.mymode ? Style.whiti : Style.gry,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.date!,
            style: provider.mymode ? Style.whiti : Style.gry,
          ),
          Container(
            height: 10.h,
            width: 10.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Style.primaryColor),
          )
        ],
      ),
    );
  }
}
