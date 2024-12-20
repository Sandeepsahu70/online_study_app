import 'package:coding_junior_company_assignment/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation App',
      home: SlideBottomNavigation(),
    );
  }
}
//
// BottomNavigationBar(
// currentIndex: controller.selectedIndex,
// onTap: (index) => controller.updateIndex(index),
// items: [
// BottomNavigationBarItem(
// icon: Icon(Icons.home),
// label: 'Home',
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.work),
// label: 'Professional',
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.school),
// label: 'Learning',
// ),
// ],