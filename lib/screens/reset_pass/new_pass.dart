import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/widgets/otp.dart';
import 'package:provider/provider.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(children: [
              SizedBox(
                height: 50.h,
              ),
              Image.asset('assets/image/lock.png'),
              SizedBox(
                height: 46.h,
              ),
              Text(
                'Create New Password',
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
              SizedBox(
                height: 21.h,
              ),
              Text(
                'Your new password must be different\nfrom previous used passwords.',
                style: provider.mymode ? Style.dark15 : Style.leghit15,
              ),
              SizedBox(
                height: 60.h,
              ),
              PassTextFild(
                icon: Icons.vpn_key_outlined,
                text: 'Password',
              ),
              SizedBox(
                height: 10.h,
              ),
              PassTextFild(
                icon: Icons.vpn_key_outlined,
                text: 'Confirm Password',
              ),
              SizedBox(
                height: 26.h,
              ),
              InkWell(
                      borderRadius: BorderRadius.circular(90),
                      onTap: () {},
                      child: Container(
                        height: 46.h,
                        width: 257.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Style.primaryColor),
                        child: Center(
                            child: Text(
                          'Reset Password',
                          style: Style.buttonText,
                        )),
                      ),
                    ),
            ]),
          )),
    );
  }
}
