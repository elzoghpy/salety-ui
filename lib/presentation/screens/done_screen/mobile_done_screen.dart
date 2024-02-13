import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class MobileDone extends StatelessWidget {
  const MobileDone({super.key});

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
                height: 50,
              ),
              const Image(
                image: AssetImage(ImageAssets.keyDoneImage),
                width: double.infinity,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                AppStrings.specialpassword,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
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
