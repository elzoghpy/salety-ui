// ignore_for_file: unnecessary_const, non_constant_identifier_names, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';

class MobileCategoriesScreen extends StatelessWidget {
  MobileCategoriesScreen({super.key});

  final List<String> Categories = [
    ImageAssets.zero,
    ImageAssets.one,
    ImageAssets.tow,
    ImageAssets.three,
    ImageAssets.fore,
    ImageAssets.five,
    ImageAssets.six,
    ImageAssets.sven,
    ImageAssets.eight,
    ImageAssets.nine,
    ImageAssets.ten,
    ImageAssets.eleven,
    ImageAssets.twelve,
    ImageAssets.thirty,
    ImageAssets.forty,
    ImageAssets.fifty,
  ];
  List<String> CategoriesName = [
    AppStrings.fruits,
    AppStrings.vegetables,
    AppStrings.meat,
    AppStrings.chicken,
    AppStrings.carrots,
    AppStrings.banana,
    AppStrings.fruits,
    AppStrings.vegetables,
    AppStrings.apple,
    AppStrings.rise,
    AppStrings.tomato,
    AppStrings.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.hikightgrey,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: MyColors.hikightgrey),
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 1 / 1.1,
            children: List.generate(Categories.length, (index) {
              String category = Categories[index];
              // String categoriesName = CategoriesName[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, fruitsScreen);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  color: Colors.white,
                                ),
                                height: 90,
                                width: double.infinity,
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Fruits',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                child: Image.asset(
                                  category,
                                  height: 105,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 53,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 51,
                                    backgroundImage: AssetImage(
                                      ImageAssets.fore,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      )),
    );
  }
}
