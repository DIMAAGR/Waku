import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:waku/src/core/themes/color_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorTheme.background,
        iconTheme: const IconThemeData(
          color: ColorTheme.icon,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorTheme.background,
        ),
      ),
      title: 'Waku',
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
