import 'package:fluro/fluro.dart';
import 'package:travel_blog/feature/decider/app_decider.dart';
import 'package:travel_blog/feature/login/login_page.dart';

final router = FluroRouter();

var rootHandler = Handler(handlerFunc: (context, params) {
  return const AppDecider();
});

var loginHandler = Handler(handlerFunc: (context, params) {
  return const LoginPage();
});
