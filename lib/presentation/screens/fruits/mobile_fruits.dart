// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';

class MobileFruitsScreen extends StatelessWidget {
  MobileFruitsScreen({super.key});
  var searchController = TextEditingController();

  List<String> CategoriesName = [
    AppStrings.fruits,
    AppStrings.vegetables,
    AppStrings.meat,
    AppStrings.chicken,
    AppStrings.carrots,
    AppStrings.banana,
    AppStrings.fruits,
    AppStrings.vegetables,
  ];

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.hikightgrey,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(Icons.arrow_back_ios),
                  )),
              onPressed: () {
                Navigator.pushNamed(context, mainView);
              },
            );
          },
        ),
        title: const Center(child: Text('Fruits')),
        actions: [
          IconButton(
            icon: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: const Icon(Icons.settings_applications_outlined)),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        backgroundColor: MyColors.greenof,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.greenof,
            statusBarBrightness: Brightness.light),
      ),
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      color: MyColors.greenof,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.white.withOpacity(.8),
                    child: const CircleAvatar(
                      radius: 51,
                      backgroundImage: AssetImage(ImageAssets.sven),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white),
                            child: TextFormField(
                              controller: searchController,
                              keyboardType: TextInputType.name,
                              cursorColor: Colors.grey,
                              style: const TextStyle(fontSize: 20),
                              decoration: const InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                ),
                                suffix: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.cancel_rounded,
                                    color: Colors.grey,
                                  ),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: MyColors.red),
                            child: const Icon(Icons.sync_alt_outlined),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
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
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 20,
                        childAspectRatio: 1 / 1.55,
                        children: List.generate(Categories.length, (index) {
                          String category = Categories[index];
                          // String categoriesName = CategoriesName[index];
                          return Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    color: Colors.white,
                                  ),
                                  height: 35,
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_outlined,
                                          size: 20,
                                          color: MyColors.green,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        // alignment: Alignment.topLeft,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25),
                                              bottomLeft: Radius.circular(25)),
                                          color: MyColors.red,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 3),
                                        child: const Text(
                                          'New',
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.topEnd,
                                  children: [
                                    Image.asset(
                                      category,
                                      height: 140,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 70,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                                color: MyColors.greenof,
                                              ),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 28),
                                                child: Text(
                                                  AppStrings.name,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      height: 1.2,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 7),
                                        child: Text('1 kg'),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: Colors.grey,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          padding:
                                              const EdgeInsets.only(left: -10),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, shoppingCart);
                                          },
                                          icon: const CircleAvatar(
                                            radius: 18.0,
                                            backgroundColor: MyColors.red,
                                            child: Icon(
                                              Icons.shopping_cart_sharp,
                                              size: 22,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '159 El',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        const Text(
                                          '259',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: MyColors.red,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
