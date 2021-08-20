import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/widgets/otp.dart';
import 'package:provider/provider.dart';

class PhoneVerfy extends StatefulWidget {
  const PhoneVerfy({Key? key}) : super(key: key);

  @override
  _PhoneVerfyState createState() => _PhoneVerfyState();
}

class _PhoneVerfyState extends State<PhoneVerfy> {
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
                    'Enter the 4-digit code we sent to your phone',
                    style: provider.mymode ? Style.dark15 : Style.leghit15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'number.',
                        style: provider.mymode ? Style.dark15 : Style.leghit15,
                      ),
                      TextButton(
                          onPressed: () {}, child: Text('Request a new one'))
                    ],
                  ),
                  SizedBox(
                    height: 0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '+233556976151',
                        style: provider.mymode
                            ? Style.listExpandedstyledark
                            : Style.listExpandedstyle,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mode_edit,
                            color: Style.blueColor,
                          ))
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
