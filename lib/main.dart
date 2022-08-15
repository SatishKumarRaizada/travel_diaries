import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_blog/app/app_main.dart';

void main() {
  runApp(const ProviderScope(child: TravelBlog()));
}
