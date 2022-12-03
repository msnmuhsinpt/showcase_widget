import 'package:flutter/material.dart';
import 'package:showcase/view/screen/cart/cart_page.dart';
import 'package:showcase/view/screen/home/home_page.dart';
import 'package:showcase/view/screen/main/widget/bottom_navigation.dart';
import 'package:showcase/view/screen/profile/profile_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final _pages = const [
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
