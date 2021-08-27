import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/my_home_page.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/widgets/grid_viwe_cuntent.dart';
import 'package:provider/provider.dart';

class PostYouLiked extends StatefulWidget {
  const PostYouLiked({Key? key}) : super(key: key);

  @override
  _PostYouLikedState createState() => _PostYouLikedState();
}

class _PostYouLikedState extends State<PostYouLiked> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          title: Text(
            "Post You’ve Liked",
            style: provider.mymode ? Style.headingTextDark : Style.headingText,
          ),
          elevation: 0,
          backgroundColor: provider.mymode ? Colors.black : Colors.white,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
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
                              icon: Text(
                        'GHC50',
                        style: Style.buttonText,
                      )),
                      staggeredTileBuilder: (int index) =>
                          StaggeredTile.count(2, index.isEven ? 2.5 : 1.7),
                      mainAxisSpacing: 15.0.w,
                      crossAxisSpacing: 15.0.h,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
