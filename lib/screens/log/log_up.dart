import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class LogUp extends StatefulWidget {
  const LogUp({Key? key}) : super(key: key);

  @override
  _LogUpState createState() => _LogUpState();
}

class _LogUpState extends State<LogUp> {
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
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: provider.mymode ? Colors.white : Colors.black,
                  size: 30,
                ))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 19, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Akwaaba to Adlynck',
                    style: provider.mymode
                        ? Style.headingTextDark1
                        : Style.buttonText2,
                  ),
                  Text('Sign up to manage your account.',
                      style: Style.descreption),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomTExtField(
              icon: Icons.person,
              text: 'Name',
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomTExtField(
              icon: Icons.email,
              text: 'Email',
            ),
            SizedBox(
              height: 25.h,
            ),
            PassTextFild(
              icon: Icons.vpn_key_outlined,
              text: 'Password',
            ),
            SizedBox(
              height: 25.h,
            ),
            PassTextFild(
              icon: Icons.vpn_key_outlined,
              text: 'Password Again',
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 59.w),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 46.h,
                  width: 257.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Style.primaryColor),
                  child: Center(
                      child: Text(
                    'Sign Up',
                    style: Style.buttonText,
                  )),
                ),
              ),
            ),
            SizedBox(height: 35.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 63),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'By signing up for an account you agree to our',
                    style: Style.whiteButtonText,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Terms and Conditions')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.copyright_rounded,
                        color: Style.grey4Color,
                        size: 20,
                      ),
                      Text(
                        '2021 Adlynck from Omama Studios',
                        style: Style.whiteButtonText,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Already have an account?',
                    style: provider.mymode
                        ? Style.headingTextDark1
                        : Style.whiteButtonText,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 46.h,
                    width: 257.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                        color: provider.mymode
                            ? Style.whiteColor
                            : Style.grey4Color,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: provider.mymode
                            ? Style.buttonText
                            : Style.whiteButtonText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
