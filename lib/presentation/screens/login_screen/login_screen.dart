// ignore: file_names
import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/login_screen/mobile_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return MobileLoginScreen();
    });
  }
}
