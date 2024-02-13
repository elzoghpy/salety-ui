// ignore: file_names
import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/splashview/landscape_splash_view.dart';
import 'package:selaty/presentation/screens/splashview/mobile_splash_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return const MObileSplashScreen();
      } else {
        return const LandScapeSplashScreen();
      }
    });
  }
}
