import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/util/style.dart';

import 'package:provider/provider.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
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
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                child: Image.asset(
                  'assets/image/paner_name.png',
                  height: 60.h,
                  width: 215.w,
                ),
              ),
              SizedBox(
                height: 75.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'Akwaaba to Adlynck',
                  style: provider.mymode
                      ? Style.headingTextDark1
                      : Style.buttonText2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'Log in to manage your account.',
                  style: Style.descreption,
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              CustomTExtField(
                icon: Icons.mail,
                text: 'Email',
              ),
              SizedBox(
                height: 24.h,
              ),
              PassTextFild(
                icon: Icons.vpn_key_outlined,
                text: 'Password',
              ),
              SizedBox(
                height: 17.h,
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: 115.w),
                  child: Text('Forgot your Password?'),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 59.w),
                child: Column(
                  children: [
                    Container(
                      height: 46.h,
                      width: 257.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.r),
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
                    SizedBox(
                      height: 61.h,
                    ),
                    Text(
                      'Don’t have an account?',
                      style: Style.body,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    InkWell(
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
                          'Sign Up',
                          style: Style.buttonText,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
