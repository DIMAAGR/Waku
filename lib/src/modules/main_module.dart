import 'package:flutter_modular/flutter_modular.dart';
import 'package:waku/src/modules/dashboard/dashboard_module.dart';
import 'package:waku/src/modules/lessons/lessons_module.dart';

class MainModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(Modular.initialRoute, module: DashboardModule());
    r.module('/lessons', module: LessonsModule());
  }
}
