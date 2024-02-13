// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, depend_on_referenced_packages, unnecessary_string_interpolations
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/data/models/onboarding_model/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingMobileScreen extends StatefulWidget {
  const OnboardingMobileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingMobileScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingMobileScreen> {
  var boardcontroller = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        image: ImageAssets.onboarding1Image,
        titel: AppStrings.onBoardingTitle1,
        body: AppStrings.onBoardingSubTitle1),
    BoardingModel(
        image: ImageAssets.onboarding2Image,
        titel: AppStrings.onBoardingTitle2,
        body: AppStrings.onBoardingSubTitle2),
    BoardingModel(
        image: ImageAssets.onboarding3Image,
        titel: AppStrings.onBoardingTitle3,
        body: AppStrings.onBoardingSubTitle3),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightgrey,
      appBar: AppBar(
        backgroundColor: MyColors.lightgrey,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.lightgrey,
            statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: Column(children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardcontroller,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: ((context, index) =>
                    buildBoardingItem(boarding[index])),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    focusElevation: 0,
                    highlightElevation: 0,
                    disabledElevation: 0,
                    hoverElevation: 0,
                    splashColor: MyColors.lightgrey,
                    focusColor: MyColors.lightgrey,
                    hoverColor: MyColors.lightgrey,
                    backgroundColor: MyColors.lightgrey,
                    onPressed: () {
                      if (isLast) {
                        Navigator.pushNamed(context, askScreen);
                      } else {
                        boardcontroller.nextPage(
                            duration: const Duration(
                              milliseconds: 800,
                            ),
                            curve: Curves.fastOutSlowIn);
                      }
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: MyColors.green,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: MyColors.lightgrey,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SmoothPageIndicator(
                    controller: boardcontroller,
                    count: boarding.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10,
                      expansionFactor: 4,
                      dotWidth: 10,
                      spacing: 5.0,
                      activeDotColor: MyColors.green,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Image(
              image: AssetImage(ImageAssets.splash1Image),
              width: double.infinity,
            )
          ]),
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: Center(child: Image(image: AssetImage('${model.image}')))),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '${model.titel}',
              style: const TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '${model.body}',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ]),
      );
}
