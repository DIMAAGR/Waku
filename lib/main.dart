import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

import 'src/core/app/main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();

  runApp(const MainApp());
}
