import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/appBar.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarView.buildAppBarWidget(
          text: 'SettingsView', color: Colors.blue),
      body: const Center(
        child: Text(
          'SettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
