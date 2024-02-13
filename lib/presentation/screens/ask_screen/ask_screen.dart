import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/ask_screen/land_scape_ask.dart';
import 'package:selaty/presentation/screens/ask_screen/mobile_ask.dart';

class AskScreen extends StatelessWidget {
  const AskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return const MobileAskScreen();
      } else {
        return const LandScapeAskScreen();
      }
    });
  }
}
