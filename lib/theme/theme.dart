import 'package:flutter/material.dart';

part 'app_bar_theme.dart';
part 'color_theme.dart';
part 'constants/color_constant.dart';
part 'constants/theme_constant.dart';
part 'input_theme.dart';
part 'typography.dart';

ThemeData theme = ThemeData(
  primaryColor: _KColor.primary,
  hintColor: _KColor.secondary,
  textTheme: _textTheme,
  appBarTheme: _appBarTheme,
  colorScheme: _colorScheme,
  inputDecorationTheme: _inputTheme,
  useMaterial3: true,
);
