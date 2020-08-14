import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_app/ui/views/StartupView.dart';
import 'package:my_app/ui/views/home_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: HomeView, fullscreenDialog: true),
    MaterialRoute(page: StartupView, initial: true),
  ],
)
class $Router {}