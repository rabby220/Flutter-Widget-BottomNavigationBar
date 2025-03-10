import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/appBar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBarView.buildAppBarWidget(text: 'ProfileView', color: Colors.blue),
      body: const Center(
        child: Text(
          'ProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
