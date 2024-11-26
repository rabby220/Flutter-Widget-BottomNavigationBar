import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/appBar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: appBarView.buildAppBarWidget(
        text: 'Home View',
        color: Colors.blue,
      ),
    );
  }
}
