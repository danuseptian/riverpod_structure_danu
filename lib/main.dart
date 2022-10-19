import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_structure_danu/module/cart/controller/cart_controller.dart';
import 'package:riverpod_structure_danu/module/profile/controller/profile_controller.dart';
import 'package:riverpod_structure_danu/module/setting/controller/setting_controller.dart';

import 'module/home/controller/home_controller.dart';
import 'module/main_navigation/controller/main_navigation_controller.dart';
import 'module/main_navigation/view/main_navigation_view.dart';
import 'util/theme.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: MainNavigationView(),
    );
  }
}

final mainNavigationController =
    ChangeNotifierProvider((_) => MainNavigationController());
final homeController = ChangeNotifierProvider((_) => HomeController());
final cartController = ChangeNotifierProvider((_) => CartController());
final profileController = ChangeNotifierProvider((_) => ProfileController());
final settingController = ChangeNotifierProvider((_) => SettingController());
