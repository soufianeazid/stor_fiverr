import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/setting_screen.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/custom_animation_bottom_bar.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:provider/provider.dart';

class ProfileCuntent extends StatefulWidget {
  String? image;
  String? text;
   ProfileCuntent({Key? key,this.image,this.text}) : super(key: key);

  @override
  _ProfileCuntentState createState() => _ProfileCuntentState();
}

class _ProfileCuntentState extends State<ProfileCuntent> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Container(
      height: 102.h,
      //width: 149.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: provider.mymode ? Style.blackColor : Style.whiteColor,
        boxShadow: [
          provider.mymode
              ? BoxShadow()
              : BoxShadow(
                  color: Color(0xFFF1F1F1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
        ],
      ),
      child: Column(children: [
        SizedBox(height: 20.h,),
         Image.asset(widget.image!,height: 30.h,width: 30.w,),
         SizedBox(height: 20.h,),
        Text(widget.text!,style: provider.mymode?Style.blackButtonText:Style.blacktext,),
       

      ],),
    );
  }
}
