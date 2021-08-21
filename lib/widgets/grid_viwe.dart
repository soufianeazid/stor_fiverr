import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/grid_cuntent.dart';
class CustomGridViwe extends StatefulWidget {
  const CustomGridViwe({ Key? key }) : super(key: key);

  @override
  _CustomGridViweState createState() => _CustomGridViweState();
}

class _CustomGridViweState extends State<CustomGridViwe> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22.w),
      child: Container(
        height: 600.h,
        width: double.infinity,
        child: StaggeredGridView.countBuilder(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => GridCuntent(),
          staggeredTileBuilder: (int index) =>
              StaggeredTile.count(2, index.isEven ? 2.5 : 1.7),
          mainAxisSpacing: 15.0.w,
          crossAxisSpacing: 15.0.h,
        ),
      ),
    );
  }
}