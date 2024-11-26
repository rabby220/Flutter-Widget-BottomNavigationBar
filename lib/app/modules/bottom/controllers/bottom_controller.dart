import 'package:bottom_nav_bar/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../profile/views/profile_view.dart';
import '../../settings/views/settings_view.dart';

class BottomController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void toggle(int index) {
    selectedIndex.value = index;
  }

  List<Widget> getPage = [
    const HomeView(),
    const ProfileView(),
    const SettingsView(),
  ];
}
