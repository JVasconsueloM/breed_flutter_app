import 'package:flutter/material.dart';

extension BuildContextExtension<T> on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  NavigatorState get navigator => Navigator.of(this);
}
