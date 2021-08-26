
import 'package:flutter_stor/util/user_model.dart';
import './user_model.dart';

class Message {
  User? sender;

  String? time;
  int? unreadCount;
  bool? isRead;
  String text;
  String? image;

  Message({
    this.image,
    this.sender,
    this.time,
    this.unreadCount,
    required this.text,
    this.isRead,
  });
}

final List<Message> messages = [
  Message(
    sender: addison,
    time: '12:09 AM',
    text: "Hi, i love the  bag.. is it still available?",
    image: null,
  ),
  Message(
    sender: currentUser,
    time: '12:05 AM',
    isRead: true,
    text: "yes!! avaiable.",
    image: null,
  ),
  Message(
    sender: currentUser,
    time: '11:45 PM',
    isRead: true,
    text: '',
    image: 'assets/image/Rectangle161.png',
  ),
  Message(
    sender: currentUser,
    time: '11:45 PM',
    isRead: true,
    text: '',
    image: 'assets/image/Rectangle161.png',
  ),
  
];

