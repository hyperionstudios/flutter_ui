import 'package:flutter/material.dart';
import 'package:flutterui/chat/chat1/chat_list.dart';
import 'package:flutterui/chat/chat1/message_provider.dart';
import 'package:flutterui/chat/chat2/chat_screen.dart';
import 'package:flutterui/profiles/profile4/profile4.dart';
import 'package:flutterui/profiles/profile5/profile5.dart';
import 'package:flutterui/registration/registration1.dart';
import 'package:flutterui/registration/registration2.dart';
import 'package:flutterui/registration/registration3.dart';
import 'package:flutterui/registration/registration4.dart';
import 'package:flutterui/registration/registration5.dart';
import 'package:flutterui/registration/registration6.dart';

import 'profiles/profile1/profile_1.dart';
import 'profiles/profile2/profile2.dart';
import 'profiles/profile3/profile3.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Registration5(),
    );
  }
}