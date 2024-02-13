//  ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/onboardingview/onboarding_landscape.dart';
import 'package:selaty/presentation/screens/onboardingview/onboarding_mobile.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return const OnboardingMobileScreen();
      } else {
        return const OnboardingLandScapeScreen();
      }
    });
  }
}
