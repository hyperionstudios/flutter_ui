import 'package:flutter/material.dart';

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
      home: Profile1(),
    );
  }
}