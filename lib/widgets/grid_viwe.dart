import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_cuntent.dart';

class CustomGridViwe extends StatefulWidget {
  const CustomGridViwe({Key? key}) : super(key: key);

  @override
  _CustomGridViweState createState() => _CustomGridViweState();
}

class _CustomGridViweState extends State<CustomGridViwe> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Container(
        height: 1250,
        width: double.infinity,
        child: StaggeredGridView.countBuilder(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          itemCount:100,
          itemBuilder: (BuildContext context, int index) => GridCuntent(
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
    );
  }
}
