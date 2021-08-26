import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/search.dart';
import 'package:flutter_stor/widgets/categori_button.dart';
import 'package:flutter_stor/widgets/conversation.dart';
import 'package:flutter_stor/widgets/custom_container.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
import 'package:flutter_stor/widgets/grid_viwe.dart';
import 'package:provider/provider.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Themeprov>();
    return SafeArea(
        child: Scaffold(
      backgroundColor: provider.mymode ? Colors.black : Colors.white,
      body: SingleChildScrollView(
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
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inbox',
                    style: provider.mymode
                        ? Style.listExpandedstyledark
                        : Style.listExpandedstyle,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SerchTextField(
                    icon: Icons.search,
                    text: 'Search by name',
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Conversation(
                      image: 'assets/image/Rectangle 156.png',
                      name: 'Kaiya Mango',
                      verfy: 'Pro Seller',
                      imagev: ('assets/icon/Vector-4.png'),
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  InkWell(
                     onTap: (){},
                    child: Conversation(
                      image: 'assets/image/per1.png',
                      name: 'Elias Manik',
                      verfy: 'Pro Seller',
                      imagev: ('assets/icon/Vector-4.png'),
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  InkWell(
                     onTap: (){},
                    child: Conversation(
                      image: 'assets/image/per1.png',
                      name: 'Elias Manik',
                      verfy: 'Pro Seller',
                      imagev: ('assets/icon/Vector-4.png'),
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Conversation(
                      image: 'assets/image/per1.png',
                      name: 'Elias Manik',
                      verfy: 'Pro Seller',
                      imagev: ('assets/icon/Vector-4.png'),
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  Conversation(
                    image: 'assets/image/per1.png',
                    name: 'Elias Manik',
                    verfy: 'Pro Seller',
                    imagev: ('assets/icon/Vector-4.png'),
                    message: 'Hi, i love the shoe.. is it still available?',
                    date: '4:21 PM',
                  ),
                  Conversation(
                    image: 'assets/image/per1.png',
                    name: 'Elias Manik',
                    verfy: 'Pro Seller',
                    imagev: ('assets/icon/Vector-4.png'),
                    message: 'Hi, i love the shoe.. is it still available?',
                    date: '4:21 PM',
                  ),
                  Conversation(
                    image: 'assets/image/per1.png',
                    name: 'Elias Manik',
                    verfy: 'Pro Seller',
                    imagev: ('assets/icon/Vector-4.png'),
                    message: 'Hi, i love the shoe.. is it still available?',
                    date: '4:21 PM',
                  ),
                ],
              ),
            ),
            SizedBox(height: 200.h,)
          ],
        ),
      ),
    ));
  }
}
