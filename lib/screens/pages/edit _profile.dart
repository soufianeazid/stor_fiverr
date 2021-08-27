import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
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
        appBar: AppBar(
          
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: provider.mymode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          ),
          title: Text(
            "Edit Profile",
            style: provider.mymode ? Style.headingTextDark : Style.headingText,
          ),
          elevation: 0,
          backgroundColor: provider.mymode ? Colors.black : Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      : Style.headingText,
                ),
              ),
              EditTextFiled(),
              EditTextFiled(),
              EditTextFiled(),
              EditTextFiled(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Change Bio',
                  style: provider.mymode
                      ? Style.headingTextDark
                      : Style.headingText,
                ),
              ),
              CustomTextArea(),
              SizedBox(
                height: 100.h,
              ),
            ],
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
           style: TextStyle(color:provider.mymode ? Colors.white : Colors.black ),
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.edit,
                size: 18.sp,
                color: provider.mymode ? Style.whiteColor : Style.grey4Color,
              ),
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
  CustomTextArea({Key? key, this.text}) : super(key: key);

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
           style: TextStyle(color:provider.mymode ? Colors.white : Colors.black ),
         
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
