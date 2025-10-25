import 'package:events_web/presentation/views/side_menu/side_menu_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String sideMenu = '/';
  // static String adminSideMenu = '/admin_side_menu';

  static List<GetPage> pages = [
    // GetPage(
    //   name: login,
    //   page: () => LoginPage(),
    // ),
    GetPage(name: sideMenu, page: () => SideMenuScreen()),
  ];
}
