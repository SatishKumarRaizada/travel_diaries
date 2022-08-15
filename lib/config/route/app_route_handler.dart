import 'package:fluro/fluro.dart';
import 'package:travel_blog/feature/decider/app_decider.dart';

final router = FluroRouter();

var rootHandler = Handler(handlerFunc: (context, params) {
  return const AppDecider();
});
