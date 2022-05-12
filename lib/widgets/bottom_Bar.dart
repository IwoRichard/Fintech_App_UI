// ignore_for_file: prefer_const_constructors, camel_case_types,prefer_const_literals_to_create_immutables
import 'package:fintech_app/screens/profile_page.dart';
import 'package:fintech_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/home_page.dart';
import '../screens/myCards_page.dart';


class bottomBar extends StatefulWidget {
  const bottomBar({ Key? key }) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int currentIndex = 0;
  final screens= [
    HomePage(),
    myCards(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primary,
          unselectedItemColor: inactiveButton,
          iconSize: 20,
          selectedIconTheme: IconThemeData(size: 25),
          selectedLabelStyle: TextStyle(fontFamily: 'Cerebri Sans',fontWeight: FontWeight.w700,fontSize: 13),
          unselectedLabelStyle: TextStyle(fontFamily: 'Cerebri Sans',fontSize: 13),
          onTap: (index) => setState(()=> currentIndex = index),
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.graph5),
              icon: Icon(Iconsax.graph),
              label: 'Transactions'
              ),
            BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.card5),
              icon: Icon(Iconsax.card),
              label: 'My Cards'
              ),
            BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.profile_tick5),
              icon: Icon(Iconsax.profile_tick4),
              label: 'Profile',
              ),  
          ],
          ),
    );
  }
}
