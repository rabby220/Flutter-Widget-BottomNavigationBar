import 'package:flutter/material.dart';

class appBarView {
  static PreferredSize buildAppBarWidget({
    required String text,
    required Color color,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: AppBar(
        title: Text(text),
        centerTitle: true,
        backgroundColor: color,
      ),
    );
  }
}
