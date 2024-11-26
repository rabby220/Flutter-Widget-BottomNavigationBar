import 'package:bottom_nav_bar/app/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../utils/app_icon.dart';
import '../controllers/bottom_controller.dart';

class BottomView extends GetView<BottomController> {
  const BottomView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///body
      body: Obx(() => controller.getPage[controller.selectedIndex.value]),

      ///bottomNavigationBar
      bottomNavigationBar: _buildBottomNavBar(controller: controller),
    );
  }
}

///build a bottomNavigationBar widget
Widget _buildBottomNavBar({required BottomController controller}) {
  return Obx(
    () => SafeArea(
      child: GNav(
          onTabChange: (int index) {
            controller.toggle(index);
          },
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: Colors.black,
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          // tab button border
          padding: const EdgeInsets.symmetric(vertical: 20),
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 24, // tab button icon size
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabs: [
            buildBottomIcon(
                Icon: AppIcons.homeBottomIcon, text: AppText.homeText),
            buildBottomIcon(
                Icon: AppIcons.profileIcon, text: AppText.profileText),
            buildBottomIcon(
                Icon: AppIcons.settingBottomIcon, text: AppText.settingText),
          ]),
    ),
  );
}

///Bottom Navigation Icon
GButton buildBottomIcon({required IconData Icon, required String text}) {
  return GButton(
    icon: Icon,
    text: text,
  );
}
