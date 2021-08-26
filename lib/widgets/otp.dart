import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:provider/provider.dart';
class Otp extends StatefulWidget {
  bool? first;
  bool? last;
  Otp({Key? key, this.first, this.last}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
     var provider = context.watch<Themeprov>();
    return Container(
      height: 85.h,
      width: 45.w,

      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && widget.last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && widget.first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold,color:provider.mymode ? Colors.white : Colors.black ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
          ),
        ),
      ),
    );
  }
}
