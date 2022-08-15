import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_blog/constant/travel_icon.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ConsumerState<LoginPage> {
  final _globalFormKey = GlobalKey<FormState>();
  final _userCtrl = TextEditingController();
  final _secureCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _globalFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: height * 0.05),
                  _travelImageWidget(),
                  SizedBox(height: height * 0.04),
                  _userWidget(),
                  SizedBox(height: height * 0.02),
                  _secureWidget(),
                  SizedBox(height: height * 0.04),
                  _loginButtonWidget(),
                  SizedBox(height: height * 0.01),
                  _forgotButtonWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Travel image widget
  Widget _travelImageWidget() {
    final height = MediaQuery.of(context).size.height;
    return SvgPicture.asset(
      TravelIcon.travelIcon,
      fit: BoxFit.contain,
      width: height * 0.4,
    );
  }

  // Username textfield widget
  Widget _userWidget() {
    return TextFormField(
      controller: _userCtrl,
      onChanged: (String str) {},
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: 'Enter username',
      ),
      validator: (String? str) {
        if (str!.trim().isEmpty) {
          return 'Please enter a valid username';
        } else {
          return null;
        }
      },
    );
  }

  // Password textfield widget
  Widget _secureWidget() {
    return TextFormField(
      obscureText: true,
      controller: _secureCtrl,
      onChanged: (String str) {},
      decoration: const InputDecoration(
        hintText: 'Enter password',
        prefixIcon: Icon(Icons.lock),
      ),
      validator: (String? str) {
        if (str!.trim().isEmpty) {
          return 'Please enter password';
        } else {
          return null;
        }
      },
    );
  }

  // Login button widget
  Widget _forgotButtonWidget() {
    final width = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(maximumSize: Size(width * 0.4, 45)),
      onPressed: () {},
      child: const Text('Forgot password?'),
    );
  }

  // Login button widget
  Widget _loginButtonWidget() {
    return TextButton(
      onPressed: () {
        if (_globalFormKey.currentState!.validate()) {}
      },
      child: const Text('Login'),
    );
  }
}
