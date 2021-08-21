import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
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

class CustomRow extends StatefulWidget {
  String? image;
  String? text;

  CustomRow({
    Key? key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  _CustomRowState createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();

    return Padding(
     padding:  EdgeInsets.only(top: 13.h),
      child: Row(
        children: [
          Image.asset(
            widget.image!,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(
            width: 14.w,
          ),
          Text(
            widget.text!,
            style:
                provider.mymode ? Style.blackButtonText : Style.whiteButtonText,
          ),
        ],
      ),
    );
  }
}

class CustomRowButton extends StatefulWidget {
  String? image;
  String? text;
  CustomRowButton({
    Key? key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  _CustomRowButtonState createState() => _CustomRowButtonState();
}

class _CustomRowButtonState extends State<CustomRowButton> {
  @override
  Widget build(BuildContext context) {
        var provider = context.watch<Themeprov>();

    return Padding(
      padding:  EdgeInsets.only(top: 13.h),
      child: Row(
        children: [
          Image.asset(
            widget.image!,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(
            width: 14.w,
          ),
          Text(
            widget.text!,
            style:Style.buttontext
                
          ),
        ],
      ),
    );
  }
}
