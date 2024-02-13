import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/fruits/land_scape_fruits.dart';
import 'package:selaty/presentation/screens/fruits/mobile_fruits.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return MobileFruitsScreen();
      } else {
        return LandScapeFruitsScreen();
      }
    });
  }
}
