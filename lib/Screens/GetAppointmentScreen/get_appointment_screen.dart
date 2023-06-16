import 'package:brs/constants/bottom_app_bar_type.dart';
import 'package:brs/Widgets/custom_checkbox_list_tile.dart';
import 'package:brs/Widgets/get_appointment_screen_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/custom_bottom_navigation_bar.dart';

class GetAppointmentScreen extends StatelessWidget {
  const GetAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text('Hairdresser Appointment System',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black
              )),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
        body:  MakeAppointmentScreenWidget(),
        bottomNavigationBar: const CustomBottomNavigationBar(from: BottomAppBarType.getAppointments,)

    );
  }
}
