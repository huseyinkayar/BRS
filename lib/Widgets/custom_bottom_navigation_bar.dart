import 'package:brs/Screens/HomeScreen/basic_screen.dart';
import 'package:brs/Screens/GetAppointmentScreen/get_appointment_screen.dart';
import 'package:brs/Screens/ProfileScreen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/bottom_app_bar_type.dart';

class CustomBottomNavigationBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomBottomNavigationBar({super.key, required this.from});

  final BottomAppBarType from;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.deepPurple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home_rounded),
            onPressed: () {
              if (widget.from != BottomAppBarType.home) {
                Get.offAll(() => const BasicScreen());
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_box_rounded),
            onPressed: () {
              if (widget.from != BottomAppBarType.getAppointments) {
                Get.offAll(() => const GetAppointmentScreen());
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_2_rounded),
            onPressed: () {
              if (widget.from != BottomAppBarType.profile) {
                Get.offAll(() => ProfileScreen());
              }
            },
          ),
        ],
      ),
    );
  }
}