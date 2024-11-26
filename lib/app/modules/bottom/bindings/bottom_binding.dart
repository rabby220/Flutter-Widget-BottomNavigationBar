import 'package:bottom_nav_bar/app/modules/home/controllers/home_controller.dart';
import 'package:bottom_nav_bar/app/modules/profile/controllers/profile_controller.dart';
import 'package:bottom_nav_bar/app/modules/settings/controllers/settings_controller.dart';
import 'package:get/get.dart';

import '../controllers/bottom_controller.dart';

class BottomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomController>(
      () => BottomController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );

    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
