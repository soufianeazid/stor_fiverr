import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:provider/provider.dart';
class CustomRow extends StatefulWidget {
  String? image;
  String? text;

  CustomRow({
    Key? key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  _CustomRowState createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();

    return Padding(
     padding:  EdgeInsets.only(top: 13.h),
      child: Row(
        children: [
          Image.asset(
            widget.image!,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(
            width: 14.w,
          ),
          Text(
            widget.text!,
            style:
                provider.mymode ? Style.blackButtonText : Style.whiteButtonText,
          ),
        ],
      ),
    );
  }
}

class CustomRowButton extends StatefulWidget {
  String? image;
  String? text;
  CustomRowButton({
    Key? key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  _CustomRowButtonState createState() => _CustomRowButtonState();
}

class _CustomRowButtonState extends State<CustomRowButton> {
  @override
  Widget build(BuildContext context) {
        var provider = context.watch<Themeprov>();

    return Padding(
      padding:  EdgeInsets.only(top: 13.h),
      child: Row(
        children: [
          Image.asset(
            widget.image!,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(
            width: 14.w,
          ),
          Text(
            widget.text!,
            style:Style.buttontext
                
          ),
        ],
      ),
    );
  }
}
