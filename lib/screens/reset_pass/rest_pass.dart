import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/widgets/otp.dart';
import 'package:provider/provider.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: provider.mymode ? Colors.white : Colors.black,
              size: 40.sp,
            ),
            onPressed: () {},
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reset Password',
                    style: provider.mymode
                        ? Style.headingTextDark
                        : Style.headingText,
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    'Enter the email associated with your\naccount to receive a verification\ncode to reset your password.',
                    style: provider.mymode
                        ? Style.blackButtonText
                        : Style.whiteButtonText,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                      child: CustomTExtField(
                    icon: Icons.email,
                    text: 'Email',
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 99.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 59.w),
              child: InkWell(
                borderRadius: BorderRadius.circular(90.r),
                onTap: () {},
                child: Container(
                  height: 46.h,
                  width: 257.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90.r),
                      color: Style.primaryColor),
                  child: Center(
                      child: Text(
                    'Let’s Go!',
                    style: Style.buttonText,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
