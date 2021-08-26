import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/search.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      ('assets/image/paner_name.png'),
                      height: 30.h,
                      width: 107.w,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Search()));
                            },
                            icon: Icon(
                              Icons.search,
                              color:
                                  provider.mymode ? Colors.white : Colors.black,
                              size: 30.sp,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none,
                              color:
                                  provider.mymode ? Colors.white : Colors.black,
                              size: 30.sp,
                            )),
                      ],
                    ),
                  ],
                ),
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
                      CustomContainer(),
                      CustomContainer(),
                      CustomContainer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomGridViwe(),
                
              ],
            ),
          ),
        ),
        //bottomNavigationBar:
      ),
    );
  }
}
