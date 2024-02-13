import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class MobileAskScreen extends StatelessWidget {
  const MobileAskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.lightgrey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: MyColors.lightgrey,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: MyColors.lightgrey,
              statusBarBrightness: Brightness.dark),
        ),
        body: Column(
          children: [
            const Expanded(
                child: Image(image: AssetImage(ImageAssets.askImage))),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 100),
              child: Column(
                children: [
                  defaultButton(
                      background: MyColors.red,
                      text: AppStrings.login,
                      function: () {
                        Navigator.pushNamed(context, loginScreen);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  defaultButton(
                      text: AppStrings.register,
                      function: () {
                        Navigator.pushNamed(context, registerScreen);
                      })
                ],
              ),
            ),
          ],
        ));
  }
}
