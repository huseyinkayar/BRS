import 'package:brs/custom_checkbox_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'basic_screen.dart';

class MakeAppointmentScreenWidget extends StatelessWidget {
  const MakeAppointmentScreenWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        children: const [
          CustomCheckboxListTile(),
        ],

    );
  }
}
