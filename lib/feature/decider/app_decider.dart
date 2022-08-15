import 'package:flutter/material.dart';

class AppDecider extends StatefulWidget {
  const AppDecider({Key? key}) : super(key: key);
  @override
  State<AppDecider> createState() => _AppDeciderState();
}

class _AppDeciderState extends State<AppDecider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
