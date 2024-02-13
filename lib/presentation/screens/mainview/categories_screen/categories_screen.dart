import 'package:flutter/material.dart';
import 'package:selaty/presentation/screens/mainview/categories_screen/land_scape_categories.dart';
import 'package:selaty/presentation/screens/mainview/categories_screen/mobile_categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return MobileCategoriesScreen();
      } else {
        return LandScapeCategoriesScreen();
      }
    });
  }
}
