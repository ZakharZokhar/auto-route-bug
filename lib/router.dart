import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/main.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/first', page: FirstRoute.page, initial: true),
    AutoRoute(path: '/second', page: SecondRoute.page),
  ];
}
