import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localstorage/localstorage.dart';
import 'package:waku/src/core/main/main_app.dart';
import 'package:waku/src/modules/main_module.dart';

FutureOr<void> main() async* {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();

  runApp(
    ModularApp(
      module: MainModule(),
      child: const MainApp(),
    ),
  );
}
