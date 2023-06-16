import 'package:brs/basic_screen.dart';
import 'package:brs/loginScreen.dart';
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