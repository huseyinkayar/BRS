import 'package:brs/basic_screen.dart';
import 'package:brs/profile_screen.dart';
import 'package:brs/register_screen.dart';
import 'package:brs/update_profile_screen.dart';
import 'package:get/get.dart';
import 'get_appointment_screen.dart';
import 'loginScreen.dart';

class AppRoutes {

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String homeScreen = '/basic_screen';

  static const String profileScreen = '/profile_screen';

  static const String getAppointmentScreen = '/get_appointment_screen';

  static const String updateProfileScreen = '/update_profile_screen';


  static List<GetPage> pages = [
    GetPage(
      name: loginScreen ,
      page: () => LoginScreen()
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: homeScreen,
      page: () => BasicScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
    ),

    GetPage(
      name: getAppointmentScreen,
      page: () => GetAppointmentScreen(),
    ),

    GetPage(
      name: updateProfileScreen,
      page: () => UpdateProfileScreen(),
    ),

  ];
}