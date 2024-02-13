import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class LandScapeDone extends StatelessWidget {
  const LandScapeDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.green,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        automaticallyImplyLeading: false,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.green,
            statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Image(
                image: AssetImage(ImageAssets.keyDoneImage),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                AppStrings.specialpassword,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: defaultButton0(
                    text: (AppStrings.done),
                    style: const TextStyle(color: MyColors.red),
                    function: () {
                      Navigator.pushNamed(context, loginScreen);
                    },
                    background: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
