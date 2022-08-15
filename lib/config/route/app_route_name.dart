import 'package:fluro/fluro.dart';
import 'package:travel_blog/config/route/app_route_handler.dart';

class AppRouteName {
  static const String root = '/';
  static const String loginRuuteName = '/travel/login';
  static const String registerRuuteName = '/travel/login';
  static const String homeRuuteName = '/travel/home';

  static void configureRoutes(FluroRouter router) {
    // App route decider
    router.define(root, handler: rootHandler);
  }
}
