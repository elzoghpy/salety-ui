// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_ONBOARDING_SCREEN_VIEWED =
    "PREFS_KEY_ONBOARDING_SCREEN_VIEWED";

class AppRefrenace {
  final SharedPreferences sharedPreferences;

  AppRefrenace.AppRefrenace({required this.sharedPreferences});

//  on boarding
  Future<void> setInBoardingScreen() async {
    sharedPreferences.setBool(PREFS_KEY_ONBOARDING_SCREEN_VIEWED, true);
  }

  Future<void> isInBoardingScreen() async {
    sharedPreferences.getBool(
          PREFS_KEY_ONBOARDING_SCREEN_VIEWED,
        ) ??
        false;
  }
}
