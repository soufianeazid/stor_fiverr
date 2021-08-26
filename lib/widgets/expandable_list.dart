import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ExpandableList extends StatefulWidget {
  List<Widget>? wlidat;
  IconData? icon;
  String? name = "";
  Color? colors;
  ExpandableList({Key? key, this.wlidat, this.icon, this.name, this.colors});

  @override
  _ExpandableListState createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return ExpansionTile(
      leading: Container(
        width: 32.w,
        height: 32.h,
        decoration: BoxDecoration(
          color: Style.pinkColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Icon(
          widget.icon,
          color: Colors.black,
        ),
      ),
      title: Text(
        widget.name!,
        style: provider.mymode
            ? Style.listExpandedstyledark
            : Style.listExpandedstyle,
      ),
      collapsedIconColor: provider.mymode ? Colors.white : Colors.black,
      collapsedTextColor: provider.mymode ? Colors.white : Colors.black,
      iconColor: provider.mymode ? Colors.white : Colors.black,
      textColor: provider.mymode ? Colors.white : Colors.black,
      trailing: Icon(
        Icons.keyboard_arrow_down,
        color: provider.mymode ? Colors.white : Colors.black,
      ),
      children: <Widget>[
        Container(
          color: provider.mymode ? Colors.black : Colors.white,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widget.wlidat!,
          ),
        ),
      ],
    );
  }
}
