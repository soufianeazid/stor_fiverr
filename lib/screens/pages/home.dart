import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/notification.dart';
import 'package:flutter_stor/screens/pages/search.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/custom_app_bar.dart';
import 'package:flutter_stor/widgets/grid_viwe_cuntent.dart';
import 'package:flutter_stor/widgets/video_adverts.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Colors.black : Colors.white,

        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 31.h,
                ),
                Container(
                  width: double.infinity,
                  height: 30.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: CategoriButton(
                          text: 'All',
                          icon: Icons.local_offer,
                        ),
                      ),
                      InkWell(
                        child: CategoriButton(
                          text: 'Properties',
                          icon: Icons.home,
                        ),
                      ),
                      InkWell(
                        child: CategoriButton(
                          text: 'Cars',
                          icon: Icons.directions_car,
                        ),
                      ),
                      InkWell(
                        child: CategoriButton(
                          text: 'Electronics',
                          icon: Icons.flash_on,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1243 Results',
                        style: provider.mymode
                            ? Style.blackButtonText
                            : Style.whiteButtonText,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Most Recent',
                                style: provider.mymode
                                    ? Style.blackButtonText
                                    : Style.whiteButtonText,
                              ),
                              Icon(
                                Icons.swap_vert,
                                color: provider.mymode
                                    ? Style.whiteColor
                                    : Style.grey4Color,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 158.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomContainer(
                        child: Text(
                          'GHC50',
                          style: Style.dark15,
                        ),
                      ),
                      CustomContainer(
                        child: Text(
                          'GHC50',
                          style: Style.dark15,
                        ),
                      ),
                      CustomContainer(
                        child: Text(
                          'GHC50',
                          style: Style.dark15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Container(
                    height: 2000,
                    width: double.infinity,
                    child: StaggeredGridView.countBuilder(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) =>
                          GridCuntent(
                              icon: Text(
                        'GHC50',
                        style: Style.smallWhiteText,
                      )),
                      staggeredTileBuilder: (int index) =>
                          StaggeredTile.count(2, index.isEven ? 2.5 : 1.7),
                      mainAxisSpacing: 15.0.w,
                      crossAxisSpacing: 15.0.h,
                    ),
                  ),
                ),
                SizedBox(height: 150.h,)
              ],
            ),
          ),
        ),
        //bottomNavigationBar:
      ),
    );
  }
}
