import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import 'basic_screen.dart';


class CustomCheckboxListTile extends StatefulWidget {
  const CustomCheckboxListTile({super.key});

  @override
  State<CustomCheckboxListTile> createState() =>
      _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;
  bool checkboxValue4 = false;
  bool checkboxValue5 = false;

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          CheckboxListTile(
            value: checkboxValue1,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue1 = value!;
              });
            },
            title: const Text('Hair Cut'),
            subtitle: const Text('80 ₺'),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue2,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue2 = value!;
              });
            },
            title: const Text('Beard Cut'),
            subtitle: const Text(
                '25 ₺'),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue3,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue3 = value!;
              });
            },
            title: const Text('Hair Wash'),
            subtitle: const Text(
                "20 ₺"),
            isThreeLine: true,
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue4,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue4 = value!;
              });
            },
            title: const Text('Mask'),
            subtitle: const Text(
                "40 ₺"),
            isThreeLine: true,
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkboxValue5,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue5 = value!;
              });
            },
            title: const Text('Waxing'),
            subtitle: const Text(
                "60 ₺"),
            isThreeLine: true,
          ),
          const Divider(height: 0),
          TextField(
            controller: dateController, //editing controller of this TextField
            decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), //icon of text field
                labelText: "Enter Date" //label text of field
            ),
            readOnly: true,  // when true user cannot edit text
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), //get today's date
                  firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101)
              );

              if(pickedDate != null ){
                print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                print(formattedDate); //formatted date output using intl package =>  2022-07-04
                //You can format date as per your need

                setState(() {
                  dateController.text = formattedDate; //set foratted date to TextField value.
                });
              }else{
                print("Date is not selected");
              }
            },

          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () => {
                      if((checkboxValue1 || checkboxValue2 || checkboxValue3 || checkboxValue4 || checkboxValue5) && dateController.text != "")
                        Get.offAll(() => const BasicScreen())
                    },
                    child: const Text("Create", style: TextStyle(fontSize: 25),)
                ),
              ],
            ),
          ),



        ],
      );
  }
}
