import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:jtech_attendance_aap/constants/color.dart';
import 'package:jtech_attendance_aap/pages/screens.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List screens = [
    HomePage(),
    AttandencePage(),
    NotificationPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        height: 65,
        child: CustomNavigationBar(
          isFloating: true,
          borderRadius: Radius.circular(10),
          bubbleCurve: Curves.bounceInOut,
          scaleCurve: Curves.easeIn,
          elevation: 10,
          scaleFactor: 0.3,
          iconSize: 30.0,
          selectedColor: AppColor.kJtechSecondColor,
          strokeColor: AppColor.kJtechSecondColor,
          unSelectedColor: AppColor.kJtechPrimaryColor,
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            CustomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
            ),
            CustomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active_outlined,
              ),
            ),
            CustomNavigationBarItem(
              icon: Icon(
                Icons.person_4_outlined,
              ),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(
              () {
                _currentIndex = index;
              },
            );
          },
        ),
      ),
      body: screens[_currentIndex],
    );
  }
}
