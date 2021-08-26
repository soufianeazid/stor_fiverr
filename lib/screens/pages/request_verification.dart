import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/edit%20_profile.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RequestVerification extends StatefulWidget {
  const RequestVerification({Key? key}) : super(key: key);

  @override
  _RequestVerificationState createState() => _RequestVerificationState();
}

class _RequestVerificationState extends State<RequestVerification> {
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
            "Request Verication",
            style: provider.mymode ? Style.headingTextDark : Style.headingText,
          ),
          elevation: 0,
          backgroundColor: provider.mymode ? Colors.black : Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 47.w),
                child: Text(
                  'Apply for Adlynck Verification',
                  style: provider.mymode
                      ? Style.headingTextDark
                      : Style.headingText,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Text(
                  'Pro seller gives your business a voice and presence on Adlynck to reach more customers, increase your sales and expand your busniess!',
                  style: provider.mymode
                      ? Style.blackButtonText
                      : Style.whiteButtonText,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              EditTextFiled(
                text: 'Name',
              ),
              EditTextFiled(
                text: 'Phone Number',
              ),
              EditTextFiled(
                text: 'Location',
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Document Type',
                  style: provider.mymode
                      ? Style.listExpandedstyledark
                      : Style.listExpandedstyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Container(
                  
                  height: 40.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: provider.mymode
                                  ? Style.whiteColor
                                  : Style.grey4Color))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select a document type',style: provider.mymode ?Style.greytext :Style.blackButtonText,),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right,size: 30.sp,
                            color:
                                provider.mymode ? Colors.white : Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 25.w),
                child: Text('Upload an image of your document.',style:provider.mymode?Style.prodName :Style.descreption ,),
              ),SizedBox(
                height: 10.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 25.w),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height:30.h ,
                    width:97.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: provider.mymode?Style.whiteColor:Style.greyColor,
                    ),
                    child: Center(child: Text('Choose File')),
                    
                  ),
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 59.w),
                child: InkWell(
                      borderRadius: BorderRadius.circular(90.r),
                      onTap: () {},
                      child: Container(
                        height: 46.h,
                        width: 257.w,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(90.r),
                            color: Style.primaryColor),
                        child: Center(
                            child: Text(
                          'Submit',
                          style: Style.buttonText,
                        )),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
