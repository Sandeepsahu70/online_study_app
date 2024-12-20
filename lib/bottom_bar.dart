import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'Screens/Home.dart';
import 'Screens/Learning_page.dart';
import 'Screens/Professional_page.dart';

class SlideBottomNavigation extends StatefulWidget {
  @override
  _SlideBottomNavigationState createState() => _SlideBottomNavigationState();
}

class _SlideBottomNavigationState extends State<SlideBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) {
        return Scaffold(
          body: controller.getSelectedPage(), // Use the controller's getSelectedPage() method
          bottomNavigationBar: FluidNavBar(
            icons: [
              FluidNavBarIcon(
                icon: Icons.home,
                backgroundColor: Colors.blue,
                extras: {"label": "Home"},
              ),
              FluidNavBarIcon(
                icon: Icons.wallet_travel_outlined,
                backgroundColor: Colors.blue,
                extras: {"label": "Professional"},
              ),
              FluidNavBarIcon(
                icon: Icons.school,
                backgroundColor: Colors.blue,
                extras: {"label": "Learning"},

              ),
            ],
            onChange: (index) => controller.updateIndex(index), // This will update the selected page
            style: FluidNavBarStyle(

              iconUnselectedForegroundColor: Colors.white,
              barBackgroundColor: Colors.blue,
              iconSelectedForegroundColor: Colors.white,
            ),
            scaleFactor: 2.5,
            defaultIndex: 0,
            itemBuilder: (icon, item) => Semantics(
              label: icon.extras!["label"],
              child: item,
            ),
          ),
        );
      },
    );
  }
}

class NavigationController extends GetxController {
  int selectedIndex = 0;

  void updateIndex(int index) {
    selectedIndex = index;
    update(); // Update the UI when index changes
  }

  Widget getSelectedPage() {
    switch (selectedIndex) {
      case 0:
        return HomePage(); // Home page screen
      case 1:
        return ProfessionalPage(); // Professional page screen
      case 2:
        return LearningPage(); // Learning page screen
      default:
        return HomePage(); // Default screen if something goes wrong
    }
  }
}
