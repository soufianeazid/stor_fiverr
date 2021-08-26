import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/util/switchmsrou9a.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/main.dart';
import 'package:flutter_stor/util/save.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_list_tile.dart';
import 'package:flutter_stor/widgets/expandable_list.dart';
import 'package:flutter_stor/util/switchmsrou9a.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';



class CustomListTile extends StatefulWidget {
  String? name = "";
   CustomListTile({Key? key,this.name}) : super(key: key);

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
     var provider = context.watch<Themeprov>();
    return Container(
        height: 50.h,
        width: 340.w,
        child: ListTile(
          title: Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: Text(
             widget.name!,
              style: provider.mymode
                      ? Style.listExpandedstyledark
                      : Style.listExpandedstyle,
            ),
          ),
          trailing: Container(
            width: 40.w,
            height: 30.h,
            child:flutterSwitch()
          ),
        ));
  }
}

Widget flutterSwitch() {
  return FlutterSwitch(
    width: 70.w,
    borderRadius: 30.0.r,
    value: true,
    onToggle: (bool value) {
      
    },
  );
}
