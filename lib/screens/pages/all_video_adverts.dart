import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/grid_viwe_cuntent.dart';
import 'package:flutter_stor/widgets/video_adverts.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class AllVideoAdverts extends StatefulWidget {
  const AllVideoAdverts({Key? key}) : super(key: key);

  @override
  _AllVideoAdverstState createState() => _AllVideoAdverstState();
}

class _AllVideoAdverstState extends State<AllVideoAdverts> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Style.dark : Style.whiteColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: provider.mymode ? Style.dark : Style.whiteColor,
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
            'All Video Adverts',
            style: provider.mymode ? Style.headingTextDark : Style.headingText,
          ),
        ),
        body: SingleChildScrollView(
          //scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 21.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  '20 Video Adverts',
                  style: provider.mymode
                      ? Style.buttonText
                      : Style.whiteButtonText,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: double.infinity,
                height: 158.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomContainer(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Style.whiteColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      CustomContainer(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Style.whiteColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      CustomContainer(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Style.whiteColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Container(
                  height: 1250,
                  width: double.infinity,
                  child: StaggeredGridView.countBuilder(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) =>
                        GridCuntent(
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: Style.whiteColor,
                          size: 20.sp,
                        ),
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(2, index.isEven ? 2.5 : 1.7),
                    mainAxisSpacing: 15.0.w,
                    crossAxisSpacing: 15.0.h,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
