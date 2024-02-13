// ignore: file_names
import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/done_screen/land_scape_done_screen.dart';
import 'package:selaty/presentation/screens/done_screen/mobile_done_screen.dart';

class Done extends StatelessWidget {
  const Done({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return const MobileDone();
      } else {
        return const LandScapeDone();
      }
    });
  }
}
