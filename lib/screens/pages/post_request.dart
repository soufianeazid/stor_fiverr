import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/custom_list_tile.dart';
import 'package:flutter_stor/widgets/expandable_list.dart';
import 'package:flutter_stor/util/switchmsrou9a.dart';
import 'package:provider/provider.dart';

class PostRequest extends StatefulWidget {
  const PostRequest({Key? key}) : super(key: key);

  @override
  _PostRequestState createState() => _PostRequestState();
}

class _PostRequestState extends State<PostRequest> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
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
            "Post Request",
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
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 33.h,
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 136.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: provider.mymode ? Colors.white : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 17.h,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/image/per4.png',
                        height: 32.h,
                        width: 32.w,
                      ),
                      title: Container(
                        height: 48.h,
                        width: double.infinity,
                        child: TextField(
                          style: TextStyle(
                              color: provider.mymode
                                  ? Colors.white
                                  : Colors.black),
                          maxLines: 8,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  'Describe the product or service you’re looking for...',
                              hintStyle: Style.whiteButtonText),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
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
                height: 78.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 46.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.r),
                    color: Style.primaryColor,
                  ),
                  child: Center(
                    child: Text('Post Request', style: Style.dark15),
                  ),
                ),
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
