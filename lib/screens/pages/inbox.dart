import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stor/core/provider/theme_provider.dart';
import 'package:flutter_stor/screens/pages/conversation.dart';
import 'package:flutter_stor/widgets/conversation.dart';
import 'package:flutter_stor/util/style.dart';
import 'package:flutter_stor/widgets/custom_app_bar.dart';
import 'package:flutter_stor/widgets/custom_text_field.dart';
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
            CustomAppBar(),
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
                    onTap: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conver()));
                    },
                    child: Conversation(
                      image: 'assets/image/Rectangle 156.png',
                      name: 'Kaiya Mango',
                      verfy: 'Pro Seller',
                      imagev: Icons.verified,
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  InkWell(
                     onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conver()));
                     },
                    child: Conversation(
                      image: 'assets/image/per1.png',
                      name: 'Elias Manik',
                      verfy: 'Pro Seller',
                      imagev: Icons.verified,
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  InkWell(
                     onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conver()));
                     },
                    child: Conversation(
                      image: 'assets/image/per1.png',
                      name: 'Elias Manik',
                      verfy: 'Pro Seller',
                      imagev: Icons.verified,
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conver()));
                    },
                    child: Conversation(
                      image: 'assets/image/per1.png',
                      name: 'Elias Manik',
                      verfy: 'Pro Seller',
                      imagev: Icons.verified,
                      message: 'Hi, i love the shoe.. is it still available?',
                      date: '4:21 PM',
                    ),
                  ),
                  Conversation(
                    image: 'assets/image/per1.png',
                    name: 'Elias Manik',
                    verfy: 'Pro Seller',
                    imagev: Icons.verified,
                    message: 'Hi, i love the shoe.. is it still available?',
                    date: '4:21 PM',
                  ),
                  Conversation(
                    image: 'assets/image/per1.png',
                    name: 'Elias Manik',
                    verfy: 'Pro Seller',
                    imagev: Icons.verified,
                    message: 'Hi, i love the shoe.. is it still available?',
                    date: '4:21 PM',
                  ),
                  Conversation(
                    image: 'assets/image/per1.png',
                    name: 'Elias Manik',
                    verfy: 'Pro Seller',
                    imagev: Icons.verified,
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
