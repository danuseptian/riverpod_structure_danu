import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../main.dart';
import '../../cart/view/cart_view.dart';
import '../../home/view/home_view.dart';
import '../../profile/view/profile_view.dart';
import '../../setting/view/setting_view.dart';

class MainNavigationView extends ConsumerWidget {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<BottomNavigationBarItem> bottomNavItem = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '',
      ),
    ];

    List<Widget> bottomTabView = <Widget>[
      HomeView(),
      CartView(),
      SettingView(),
      ProfileView(),
    ];

    return Consumer(builder: (_, controller, __) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.read(mainNavigationController).selectedIndex,
          onTap: controller.read(mainNavigationController).onItemTapped,
          items: bottomNavItem,
        ),
        body: bottomTabView.elementAt(
            controller.watch(mainNavigationController).selectedIndex),
      );
    });
  }
}
