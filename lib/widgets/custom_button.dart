import 'package:flutter/material.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  String? text = '';
  Color? color;

  Widget? icon;

  CustomButton({
    Key? key,
    this.color,
    this.icon,
    this.text,
    colors,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Container(
          height: 70.h,
          width: 295.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90.r),
            color: widget.color,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Row(
              children: [
                widget.icon!,
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  widget.text!,
                  style: Style.white24,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
