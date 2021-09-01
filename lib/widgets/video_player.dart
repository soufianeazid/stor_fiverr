import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:provider/provider.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.play();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: provider.mymode ? Colors.black : Colors.white,
        // Use a FutureBuilder to display a loading spinner while waiting for the
        // VideoPlayerController to finish initializing.
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 264.h,
                  width: double.infinity,
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the video.
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          // Use the VideoPlayer widget to display the video.
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        // If the VideoPlayerController is still initializing, show a
                        // loading spinner.
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                Positioned(
                  right: 32.w,
                  top: 32.h,
                  child: Container(
                    height: 250.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {},
                            child:
                                wlidat('assets/icon/heart (3) 1.png', '2.3k')),
                        InkWell(
                            onTap: () {},
                            child: wlidat(
                                'assets/icon/u_comment-lines.png', '2.3k')),
                        InkWell(
                            onTap: () {},
                            child:
                                wlidat('assets/icon/u_share-alt.png', '2.3k')),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/icon/expand 1.png'),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 40.sp,
                      color: Style.whiteColor,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            ListTile(
              leading: Image.asset('assets/image/per1.png'),
              title: Row(
                children: [
                  Text('Terry Dias',
                      style: provider.mymode ? Style.dark15 : Style.leghit15),
                  SizedBox(
                    width: 11.w,
                  ),
                  Text('2.3 Views',
                      style: provider.mymode ? Style.hinttext : Style.whiti)
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pro Seller',
                    style: Style.pinki,
                  ),
                  Icon(
                    Icons.verified,
                    size: 16.sp,
                    color: Style.primaryColor,
                  )
                ],
              ),
              trailing: Text(
                'GHC50',
                style: Style.primfont,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Used Misfit Watch For Man',
                      style: provider.mymode
                          ? Style.headingTextDark1
                          : Style.buttonText2),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur velit felis pharetra, viverra sed sit fermentum. Sit amet, elementum nullam risus aliquam ultrices pharetra etiam suspendisse.',
                    style: provider.mymode ? Style.whiti : Style.hinttext,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'www.website.com',
                            style:
                                provider.mymode ? Style.whiti : Style.hinttext,
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 40.sp,
                              color: Style.primaryColor,
                            ),
                            Text(
                              'Negotiable',
                              style: Style.pinki,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: provider.mymode
                            ? Style.listExpandedstyledark
                            : Style.listExpandedstyle,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: Text(
                          'Clothing & Beauty',
                          style: provider.mymode ? Style.whiti : Style.hinttext,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset('assets/image/per1.png'),
              title: Row(
                children: [
                  Text('Terry Dias',
                      style: provider.mymode ? Style.dark15 : Style.leghit15),
                  SizedBox(
                    width: 5.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Pro Seller',
                        style: Style.pinki,
                      ),
                      Icon(
                        Icons.verified,
                        size: 16.sp,
                        color: Style.primaryColor,
                      )
                    ],
                  ),
                ],
              ),
              subtitle: Text('Nice one, i am interested to buy',
                  style: provider.mymode ? Style.whiti : Style.hinttext),
              trailing: Text('1 hr ago',
                  style: provider.mymode ? Style.hinttext : Style.whiti),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75.w),
              child: Row(
                children: [
                  InkWell(
                  onTap: (){},
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Style.primaryColor,
                      size: 25.sp,
                    ),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  InkWell(
                     onTap: (){},
                    child: FaIcon(
                      FontAwesomeIcons.commentDots,
                      color: Style.primaryColor,
                      size: 25.sp,
                    ),
                  )
                ],
              ),
            ),
            Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all comments',
                      style: Style.whiteButtonText,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 46.h,
                  width: 124.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color:
                          provider.mymode ? Style.whiteColor : Style.grey4Color,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Chat',
                      style: provider.mymode
                          ? Style.buttonText
                          : Style.whiteButtonText,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 46.h,
                  width: 124.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Style.primaryColor),
                  child: Center(
                      child: Text(
                    'Call Now!',
                    style: Style.buttonText,
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget wlidat(String image, text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16.h),
    child: Column(
      children: [
        Image.asset(
          image,
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(text, style: Style.whiti),
      ],
    ),
  );
}

