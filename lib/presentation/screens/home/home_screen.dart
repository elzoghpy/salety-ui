import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/home/land_scape_home_screen.dart';
import 'package:selaty/presentation/screens/home/mobile_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return MobileHomeScreen();
      } else {
        return LandScapeHomeScreen();
      }
    });
  }
}
