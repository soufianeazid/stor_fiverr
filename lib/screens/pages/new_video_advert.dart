import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_expandable.dart';
import 'package:flutter_stor/widgets/custom_sheet_2.dart';
import 'package:provider/provider.dart';

class NewVideoAdvert extends StatefulWidget {
  const NewVideoAdvert({Key? key}) : super(key: key);

  @override
  _NewVideoAdvertState createState() => _NewVideoAdvertState();
}

class _NewVideoAdvertState extends State<NewVideoAdvert> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Scaffold(
      backgroundColor: provider.mymode ? Colors.black : Colors.white,
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
          "New Video Advert",
          style: provider.mymode ? Style.headingTextDark : Style.headingText,
        ),
        elevation: 0,
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 32.h, right: 20.w),
            child: InkWell(
              child: Text(
                'Clear',
                style: Style.descreption,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 33.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          elevation: 100,
                          backgroundColor:
                              provider.mymode ? Style.dark : Style.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(22.r),topRight:Radius.circular(22.r), ),
                          ),
                          context: context,
                          builder: (context) {
                            return CustomSheet();
                          });
                    },
                    child: Container(
                      height: 184.h,
                      width: 131.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: provider.mymode ? Colors.white : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70.h,
                          ),
                          Icon(
                            Icons.add,
                            color: provider.mymode ? Colors.white : Colors.grey,
                            size: 40.sp,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text('Select Video',
                              style: provider.mymode ? Style.whiti : Style.gry)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    height: 80.h,
                    width: 180.w,
                    child: TextField(
                      style: TextStyle(
                          color: provider.mymode ? Colors.white : Colors.black),
                      maxLines: 8,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Please provide a detailed description.You can mention as many details aspossible. It will make your ad moreattractive for buyers.',
                          hintStyle: Style.whiteButtonText),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 138.w,
                    height: 46.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: provider.mymode ? Colors.white : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'GHC',
                            style: provider.mymode
                                ? Style.buttonText
                                : Style.whiteButtonText,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Container(
                              height: 20.h,
                              width: 50.w,
                              child: TextField(
                                style: TextStyle(
                                    color: provider.mymode
                                        ? Colors.white
                                        : Colors.black),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Budget',
                                    hintStyle: Style.whiteButtonText),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 40.sp,
                        color: Style.bpdy,
                      ),
                      Text(
                        'Negotiable',
                        style: Style.whiteButtonText,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              Expandable(
                name: 'Select Category',
                wlidat: [],
              ),
              CustomText(
                titel: 'Titel',
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomText(
                titel: 'Website',
              ),
              SizedBox(
                height: 104.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 46.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.r),
                        border: Border.all(
                          color: provider.mymode
                              ? Style.whiteColor
                              : Style.grey4Color,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Save Draft',
                          style: provider.mymode
                              ? Style.buttonText
                              : Style.whiteButtonText,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 46.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90.r),
                            color: Style.primaryColor),
                        child: Center(
                            child: Text(
                          'Post Ad',
                          style: Style.buttonText,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              Wrap(
                children: [
                  Row(
                    children: [
                      Text(
                        'By clicking on Post Request, you agree to our',
                        style: Style.gry,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Terms of Use',
                            style: Style.pinki,
                          )),
                    ],
                  )
                ],
              ),
              Text(
                ' confirm that you will abide by the Safety Tips, and declare\nthat this posting does not include any Prohibited items.',
                style: Style.gry,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  String? titel;
  CustomText({Key? key, this.titel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Container(
      height: 30.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: provider.mymode ? Colors.white : Colors.grey))),
      child: TextField(
        style: TextStyle(color: provider.mymode ? Colors.white : Colors.black),
        decoration: InputDecoration(
            hintText: titel,
            hintStyle: Style.hinttext,
            border: InputBorder.none),
      ),
    );
  }
}
