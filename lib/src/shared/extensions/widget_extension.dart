import 'package:flutter/material.dart';

extension WidgetExtension on Widget? {
  SafeArea safeArea() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: this,
      ),
    );
  }
}
