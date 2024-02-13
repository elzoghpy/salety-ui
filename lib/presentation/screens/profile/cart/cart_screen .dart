// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/profile/cart/land_scape_cart_screen.dart';
import 'package:selaty/presentation/screens/profile/cart/mobile_cart_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return const MobileCartScreen();
      } else {
        return const LandScapeCartScreen();
      }
    });
  }
}
