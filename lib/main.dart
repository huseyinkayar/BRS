import 'package:brs/Screens/HomeScreen/basic_screen.dart';
import 'package:brs/Screens/LoginScreen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return const GetMaterialApp(
      home : LoginScreen(),
    );
  }
}