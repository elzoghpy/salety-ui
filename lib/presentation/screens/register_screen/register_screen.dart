// ignore: file_names
import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/register_screen/land_scape_register.dart';
import 'package:selaty/presentation/screens/register_screen/mobile_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return MobileRegisterScreen();
      } else {
        return LandScapeRegisterScreen();
      }
    });
  }
}
