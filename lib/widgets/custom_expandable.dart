import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Expandable extends StatefulWidget {
  List<Widget>? wlidat;

  String? name = "";
  Color? colors;
  Expandable({Key? key, this.wlidat, this.name, this.colors})
      : super(key: key);

  @override
  _ExpandableState createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return ExpansionTile(
      title: Text(
        widget.name!,
        style: provider.mymode
            ? Style.greytext
            :Style.blacktext
             ,
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
