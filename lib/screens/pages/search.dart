import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
        appBar: AppBar(
          toolbarHeight: 100.h,
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
          title: SerchTextField(
            icon: Icons.search,
            text: 'Type your search here',
          ),
          elevation: 0,
          backgroundColor: provider.mymode ? Colors.black : Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 17.w, top: 20.h),
              child: Text(
                'Top Search',
                style: provider.mymode
                    ? Style.listExpandedstyledark
                    : Style.listExpandedstyle,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              height: 50.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Catigory(
                    color: Style.primaryColor,
                    text: 'Samsung',
                  ),
                  Catigory(
                    color: Style.primaryColor,
                    text: 'Macbook Pro',
                  ),
                  Catigory(
                    color: Style.c4,
                    text: '2x Black Sofas',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 50.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Catigory(
                    color: Style.primaryColor,
                    text: 'Samsung',
                  ),
                  Catigory(
                    color: Style.yellew,
                    text: 'Laptop',
                  ),
                  Catigory(
                    color: Style.blueColor,
                    text: 'Toyota Corolla',
                  ),
                  Catigory(
                    color: Style.purpel,
                    text: '3 Bedrooms',
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            CustomGridViwe(),
          ],
        )),
      ),
    );
  }
}

class Catigory extends StatelessWidget {
  Color? color;
  String? text = '';
  Catigory({Key? key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
        height: 28.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31.r), color: color),
        child: Center(
            child: Text(
          text!,
          style: Style.headingTextDark,
        )),
      ),
    );
  }
}
