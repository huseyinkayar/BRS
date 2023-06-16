import 'package:brs/Widgets/custom_bottom_navigation_bar.dart';
import 'package:brs/main.dart';
import 'package:flutter/material.dart';

import '../../constants/bottom_app_bar_type.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

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
       body: Center(
         child:  ListView(
           children: [
             Card(
               clipBehavior: Clip.antiAlias,
               child: Column(
                 children: [
                   ListTile(
                     title: const Text('Reservation 1'),
                     subtitle: Text(
                       'Hair Cut / Total cost = 80 ₺',
                       style: TextStyle(color: Colors.black.withOpacity(0.6)),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Text(
                       'You have a haircut appointment on 17.06.2023.',
                       style: TextStyle(color: Colors.black.withOpacity(0.6)),
                     ),
                   ),
                   ButtonBar(
                     alignment: MainAxisAlignment.start,
                     children: [
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.green, // Background color
                         ),
                         onPressed: () {
                           // Perform some action
                         },
                         child: const Text('Done'),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.red, // Background color
                         ),
                         onPressed: () {
                           // Perform some action
                         },
                         child: const Text('Canceled'),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
             Card(
               clipBehavior: Clip.antiAlias,
               child: Column(
                 children: [
                   ListTile(
                     title: const Text('Reservation 2'),
                     subtitle: Text(
                       'Hair and Beard Cut / Total Cost = 105 ₺',
                       style: TextStyle(color: Colors.black.withOpacity(0.6)),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Text(
                       'You have a hair and beard cutting appointment on 17.07.2023',
                       style: TextStyle(color: Colors.black.withOpacity(0.6)),
                     ),
                   ),
                   ButtonBar(
                     alignment: MainAxisAlignment.start,
                     children: [
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.green, // Background color
                         ),
                         onPressed: () {
                           // Perform some action
                         },
                         child: const Text('Done'),
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.red, // Background color
                         ),
                         onPressed: () {
                           // Perform some action
                         },
                         child: const Text('Canceled'),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
       bottomNavigationBar:  const CustomBottomNavigationBar(from: BottomAppBarType.home)
     );
   }

}