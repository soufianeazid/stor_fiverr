import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomGridViwe extends StatefulWidget {
  const CustomGridViwe({ Key? key }) : super(key: key);

  @override
  _CustomGridViweState createState() => _CustomGridViweState();
}

class _CustomGridViweState extends State<CustomGridViwe> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => Container(
          color: Colors.green,
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('$index'),
            ),
          )),
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 15.0.w,
      crossAxisSpacing: 15.0.h,
    );
  }
}