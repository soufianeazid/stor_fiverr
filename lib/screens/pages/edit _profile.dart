import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/my_home_page.dart';
import 'package:flutter_stor/screens/pages/setting_screen.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/container_dyal_profil.dart';
import 'package:flutter_stor/widgets/custom_animation_bottom_bar.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/widgets/custom_row.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:provider/provider.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({Key? key}) : super(key: key);

  @override
  _EditProfilState createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Style.dark : Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            size: 30.sp,
                            color:
                                provider.mymode ? Colors.white : Colors.black,
                          )),
                      Text(
                        'Edit Profile',
                        style: provider.mymode
                            ? Style.headingTextDark1
                            : Style.buttonText2,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 156.w),
                      child: Container(
                        height: 64.h,
                        width: 64.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/image/photo_profile.png'))),
                      ),
                    ),
                    Padding(
                     padding: EdgeInsets.symmetric(horizontal: 159.w),
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          size: 30.sp,
                          color: Style.whiteColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                EditTextFiled(
                  text: 'Name',
                ),
                EditTextFiled(
                  text: 'Email',
                ),
                EditTextFiled(
                  text: 'Location',
                ),
                EditTextFiled(
                  text: 'Phone Number',
                ),
                EditTextFiled(
                  text: 'Website',
                ),
                SizedBox(
                  height: 34.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    'Links',
                    style: provider.mymode
                        ? Style.headingTextDark
                        : Style.headingText
                        ,
                  ),
                ),
                EditTextFiled(),
                EditTextFiled(),
                EditTextFiled(),
                EditTextFiled(),
                SizedBox(height: 20.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    'Change Bio',
                    style: provider.mymode
                        ? Style.headingTextDark
                        : Style.headingText
                        ,
                  ),
                ),
                CustomTextArea(),
                SizedBox(height: 100.h,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditTextFiled extends StatelessWidget {
  IconData? icon;
  String? text = "";
  EditTextFiled({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: provider.mymode
                        ? Style.whiteColor
                        : Style.grey4Color))),
        child: TextField(
          decoration: InputDecoration(
              labelText: text,
              labelStyle: provider.mymode
                  ? Style.listExpandedstyledark
                  : Style.listExpandedstyle),
        ),
      ),
    );
  }
}


class CustomTextArea extends StatelessWidget {
  String? text = "";
   CustomTextArea({ Key? key,this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: provider.mymode
                        ? Style.whiteColor
                        : Style.grey4Color))),
        child: TextField(
          decoration: InputDecoration(
              labelText: text,
              labelStyle: provider.mymode
                  ? Style.listExpandedstyledark
                  : Style.listExpandedstyle),
        ),
      ),
    );
  }
}