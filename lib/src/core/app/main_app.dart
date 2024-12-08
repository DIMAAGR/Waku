import 'package:flutter/material.dart';
import 'package:waku/src/core/themes/app_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.get(),
      title: 'Waku',
      debugShowCheckedModeBanner: false,
    );
  }
}
