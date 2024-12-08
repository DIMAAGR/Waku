import 'package:flutter/material.dart';

import 'color_theme.dart';

abstract class AppTheme {
  static ThemeData get() => ThemeData(
        scaffoldBackgroundColor: ColorTheme.background,
        iconTheme: const IconThemeData(color: ColorTheme.icon),
        appBarTheme: const AppBarTheme(backgroundColor: ColorTheme.background),
      );
}
