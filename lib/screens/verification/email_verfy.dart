import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/widgets/otp.dart';
import 'package:provider/provider.dart';

class EmailVerfy extends StatefulWidget {
  const EmailVerfy({Key? key}) : super(key: key);

  @override
  _EmailVerfyState createState() => _EmailVerfyState();
}

class _EmailVerfyState extends State<EmailVerfy> {
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
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Image.asset('assets/image/phone_verfy.png'),
              SizedBox(
                height: 46.h,
              ),
              Text(
                'Enter Confirmation Code',
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
              SizedBox(
                height: 21.h,
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enter the confirmation code we sent to ',
                    style: provider.mymode ? Style.dark15 : Style.leghit15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ellaminaa@gmail.com.',
                        style: provider.mymode ? Style.dark15 : Style.leghit15,
                      ),
                      TextButton(onPressed: () {}, child: Text('Resend Code'))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        Otp(),
                        SizedBox(
                          width: 32.w,
                        ),
                        Otp(),
                        SizedBox(
                          width: 32.w,
                        ),
                        Otp(),
                        SizedBox(
                          width: 32.w,
                        ),
                        Otp(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
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
                        'Submit',
                        style: Style.buttonText,
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
