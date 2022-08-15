import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:travel_blog/config/route/app_route_name.dart';
import 'package:travel_blog/config/route/application_route.dart';
import 'package:travel_blog/theme/app_theme.dart';

class TravelBlog extends StatefulWidget {
  const TravelBlog({Key? key}) : super(key: key);

  @override
  State<TravelBlog> createState() => _TravelBlogState();
}

class _TravelBlogState extends State<TravelBlog> {
  _TravelBlogState() {
    final router = FluroRouter();
    AppRouteName.configureRoutes(router);
    Application.router = router;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TravelTheme.lightTheme,
      onGenerateRoute: Application.router.generator,
    );
  }
}
