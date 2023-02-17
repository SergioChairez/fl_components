import 'package:fl_components/models/menu_option.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    // TODO borrar home
    // MenuOption(route: 'home', icon: Icons.home_filled, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'ListView 1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt_outlined, name: 'ListView 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'CircleAvatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.animation_outlined, name: 'Animated Screen', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_outlined, name: 'Inputs Screen', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slideshow_outlined, name: 'Slider Screen', screen: const SliderScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.build_circle_outlined, name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)>getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home': (BuildContext context) => const HomeScreen() });

      for (final option in menuOptions) {
        appRoutes.addAll({ option.route: (BuildContext context) => option.screen });
      }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': ( BuildContext context ) => const ListView1Screen(),
  //   'listview2': ( BuildContext context ) => const ListView2Screen(),
  //   'alert': ( BuildContext context ) => const AlertScreen(),
  //   'card': ( BuildContext context ) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);

    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}