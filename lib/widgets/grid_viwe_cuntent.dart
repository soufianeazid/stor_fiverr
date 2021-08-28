import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/video_player.dart';

class GridCuntent extends StatelessWidget {
  Widget? icon;
  
   GridCuntent({Key? key,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/image/1.png',
                    ),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.w, top: 9.h),
          child: Row(
            children: [
              Container(
                height: 19.h,
                width: 41.w,
                decoration: BoxDecoration(
                  color: Style.whiteColor,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Style.primaryColor,
                      size: 15.sp,
                    ),
                    Text(
                      '2.5 K',
                      style: Style.smallText,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 19.h,
                width: 41.w,
                decoration: BoxDecoration(
                  color: Style.blackColor.withOpacity(0.5.r),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: Style.whiteColor,
                      size: 15.sp,
                    ),
                    Text(
                      '2.5 K',
                      style: Style.smallWhiteText,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: InkWell(
            onTap: (){},
            child: Container(
              height: 28.h,
              width: 47.w,
              decoration: BoxDecoration(
                  color: Style.grey4Color,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r))),
              child:Center(child: icon) 
            ),
          ),
        ),
        Positioned(
          bottom: 1.h,
          child: Container(
            height: 36.h,
            width:160.w,
            decoration: BoxDecoration(
              color: Style.black25,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r))),
                    child: Center(child: Text('Nike red color spor...',overflow: TextOverflow.ellipsis,style: Style.prodName,),),
          ),
        )
      ],
    );
  }
}
