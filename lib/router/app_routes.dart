import 'package:flutter/material.dart';
import 'package:testapp/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    // TODO: Borrar Home
    MenuOption(
        route: '/home',
        name: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home),

    MenuOption(
        route: '/lv_1',
        name: 'List View 1',
        screen: lv_1(),
        icon: Icons.remove_red_eye),

    MenuOption(
        route: '/lv_2',
        name: 'List View 2',
        screen: lv_2(),
        icon: Icons.remove_red_eye_outlined),

    MenuOption(
        route: '/alert',
        name: 'Alert',
        screen: AlertScreen(),
        icon: Icons.warning),

    MenuOption(
        route: '/dialog',
        name: 'Dialog',
        screen: DialogScreen(),
        icon: Icons.star_border_purple500_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => HomeScreen(),
    '/lv_1': (BuildContext context) => lv_1(),
    '/lv_2': (BuildContext context) => lv_2(),
    '/alert': (BuildContext context) => AlertScreen(),
    '/dialog': (BuildContext context) => DialogScreen(),
  };

  /* static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => AlertScreen()));
  } */
}
