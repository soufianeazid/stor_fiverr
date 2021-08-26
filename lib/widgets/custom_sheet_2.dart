import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:provider/provider.dart';

class CustomSheet extends StatefulWidget {
  const CustomSheet({Key? key}) : super(key: key);

  @override
  _CustomSheetState createState() => _CustomSheetState();
}

class _CustomSheetState extends State<CustomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Container(
      height: 539.h,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      icon: Icon(
                        Icons.close,
                        color: provider.mymode ? Colors.white : Colors.black,
                        size: 30,
                      )),
                  Text(
                    'Select Video',
                    style: provider.mymode
                        ? Style.headingTextDark1
                        : Style.buttonText2,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Gallery',
                    style: Style.grey20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: provider.mymode ? Colors.white : Colors.black,
                        size: 30,
                      )),
                ],
              )
            ],
          ),
          SizedBox(
            height: 128.h,
          ),
          Image.asset(provider.mymode
              ? 'assets/icon/sad.png'
              : 'assets/icon/grey_sad.png'),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'No videos found',
            style: provider.mymode ? Style.white24 : Style.grey24,
          ),
          SizedBox(
            height: 68.h,
          ),
          Container(
            height: 46.h,
            width: 257.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90.r),
                color: Style.primaryColor),
            child: Center(
                child: Text(
              'Create Video',
              style: Style.buttonText,
            )),
          ),
        ],
      ),
    );
  }
}
