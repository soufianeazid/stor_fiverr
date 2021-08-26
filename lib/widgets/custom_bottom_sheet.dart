import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/new_video_advert.dart';
import 'package:flutter_stor/screens/pages/post_request.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_cuntent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/my_home_page.dart';
import 'package:flutter_stor/screens/pages/setting_screen.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/container_dyal_profil.dart';
import 'package:flutter_stor/widgets/custom_animation_bottom_bar.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/widgets/custom_row.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:provider/provider.dart';

class CustomBottomSeet extends StatefulWidget {
  const CustomBottomSeet({Key? key}) : super(key: key);

  @override
  _CustomBottomSeetState createState() => _CustomBottomSeetState();
}

class _CustomBottomSeetState extends State<CustomBottomSeet> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return Container(
      height: 422.h,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 9.h,
          ),
          Image.asset(
            'assets/icon/line.png',
            height: 10.h,
            width: 56.w,
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Create New',
            style: provider.mymode ? Style.headingTextDark : Style.headingText,
          ),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: provider.mymode
                          ? Style.whiteColor
                          : Style.greyColor)),
            ),
          ),
          SizedBox(
            height: 39.h,
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewVideoAdvert()));
            },
            child: CustomTile(
              image: provider.mymode
                  ? 'assets/image/dark_vid.png'
                  : 'assets/image/light_vid.png',
                  titel: 'New Video Advert',
            ),
          ),
           InkWell(
              onTap: (){
                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostRequest()));
              },
             child: CustomTile(
              image: 'assets/image/Vector-4.png',
                  titel: 'Post Request',
                     ),
           ),
        ],
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  String? titel = '';
  String? image;

  CustomTile({Key? key, this.image, this.titel}) : super(key: key);

  @override
  _CustomTileState createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return ListTile(
      leading: Image.asset(widget.image!),
      title: Text(widget.titel!,
          style: provider.mymode ? Style.smallwhait : Style.smallblack),
    );
  }
}




