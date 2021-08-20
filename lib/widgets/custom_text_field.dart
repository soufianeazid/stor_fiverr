import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTExtField extends StatelessWidget {
  IconData? icon;
  String? text = "";
  CustomTExtField({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 31.w),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color:
                        provider.mymode ? Style.whiteColor : Style.grey4Color))),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              size: 30,
              color: provider.mymode ? Style.whiteColor : Style.grey4Color,
            ),
            hintText: text,
            hintStyle: Style.hinttext,
          ),
        ),
      ),
    );
  }
}

class PassTextFild extends StatelessWidget {
  IconData? icon;
  String? text = "";
  PassTextFild({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
       padding:  EdgeInsets.symmetric(horizontal: 31.w),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color:
                        provider.mymode ? Style.whiteColor : Style.grey4Color))),
        child: TextField(
          obscuringCharacter: "*",
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              size: 30,
              color: provider.mymode ? Style.whiteColor : Style.grey4Color,
            ),
            hintText: text,
            hintStyle: Style.hinttext,
          ),
        ),
      ),
    );
  }
}
