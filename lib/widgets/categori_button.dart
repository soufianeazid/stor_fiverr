import 'package:flutter/material.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriButton extends StatelessWidget {
  String? text='';
  IconData? icon;
  CategoriButton({Key? key,this.icon,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding:  EdgeInsets.only(left: 20.w),
      child: Container(
        padding: EdgeInsets.only(top: 5,left: 5,right: 5,bottom: 5),
          //width: 50.w,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Style.pinkColor,
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,size: 15,),
                SizedBox(
                  width: 10.w,
                ),
                Text(text!,style: Style.smallblack,)
              ],
            ),
          )),
    );
  }
}