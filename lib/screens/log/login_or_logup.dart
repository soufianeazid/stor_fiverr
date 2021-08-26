import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/log/log_in.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class Regester extends StatefulWidget {
  const Regester({Key? key}) : super(key: key);

  @override
  _RegesterState createState() => _RegesterState();
}

class _RegesterState extends State<Regester> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
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
                height: 48.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(90.r),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LogIn();
                  }));
                },
                child: CustomButton(
                  color: Style.primaryColor,
                  text: 'Continue With E-mail',
                  icon: Icon(
                    Icons.email,
                    color: Style.whiteColor,
                    size: 30.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(90.r),
                onTap: () {},
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Container(
                      height: 70.h,
                      width: 295.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.r),
                          border: Border.all(
                            color: provider.mymode
                                ? Style.whiteColor
                                : Style.grey4Color,
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Row(
                          children: [
                            Image.asset('assets/icon/google.png'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Continue With Google',
                              style:
                                  provider.mymode ? Style.white24 : Style.body,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(90.r),
                onTap: () {},
                child: CustomButton(
                  color: Style.blueColor,
                  text: 'Continue With Facebook',
                  icon: Image.asset('assets/icon/facebook.png'),
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 63),
                child: Column(
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
                        )
                      ],
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
