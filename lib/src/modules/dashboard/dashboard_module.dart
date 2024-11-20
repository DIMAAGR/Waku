import 'package:flutter_modular/flutter_modular.dart';
import 'package:waku/src/modules/dashboard/views/dashboard_view.dart';

class DashboardModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const DashboardView(),
    );
  }
}
