import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class LandScapeAskScreen extends StatelessWidget {
  const LandScapeAskScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Image(
                      alignment: Alignment.topCenter,
                      image: AssetImage(ImageAssets.askImage)),
                ),
                Expanded(
                  child: SizedBox(
                    child: Center(
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
