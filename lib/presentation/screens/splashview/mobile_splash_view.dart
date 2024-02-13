import 'dart:async';

import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/constants/resources/timer.dart';

class MObileSplashScreen extends StatefulWidget {
  const MObileSplashScreen({super.key});

  @override
  State<MObileSplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<MObileSplashScreen> {
  Timer? timer;

  startDelay() {
    timer = Timer(const Duration(seconds: AppTimer.splashDelay), goNext);
  }

  goNext() async {
    Navigator.pushReplacementNamed(context, onboardingScreen);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.lightgrey,
        elevation: 0,
      ),
      backgroundColor: MyColors.lightgrey,
      body: const Column(
        children: [
          Expanded(
            flex: 3,
            child: Image(
                image: AssetImage(
              ImageAssets.splash0Image,
            )),
          ),
        ],
      ),
    );
  }
}
