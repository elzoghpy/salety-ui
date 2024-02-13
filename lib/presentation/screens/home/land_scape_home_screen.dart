// ignore_for_file: non_constant_identifier_names, unused_local_variable, must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';

class LandScapeHomeScreen extends StatelessWidget {
  LandScapeHomeScreen({super.key});

  var searchController = TextEditingController();

  final List<String> bannersHed = [
    ImageAssets.zero,
    ImageAssets.fore,
    ImageAssets.sixty,
    ImageAssets.fifty,
  ];

  final List<String> bannersBottom = [
    ImageAssets.six,
    ImageAssets.nine,
    ImageAssets.forty,
    ImageAssets.thirty,
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
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white),
                  child: const Icon(
                    Icons.settings_applications_outlined,
                    size: 32,
                  )),
              onPressed: () {},
            );
          },
        ),
        backgroundColor: MyColors.hikightgrey,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        AppStrings.name,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          AppStrings.location,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.location_on,
                          color: MyColors.ofred,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(ImageAssets.nine),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
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
                              contentPadding: EdgeInsets.symmetric(vertical: 0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
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
                              color: MyColors.ofred),
                          child: const Icon(Icons.sync_alt_outlined),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Best value',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Highest sales',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '<View all',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                CarouselSlider(
                  items: bannersHed
                      .map((banner) => SizedBox(
                            width: double.infinity,
                            child: Card(
                              elevation: 3,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                side: BorderSide(color: Colors.white, width: 2),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: Image.asset(
                                  banner,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    initialPage: 0,
                    viewportFraction: 1.00,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, mainView);
                    },
                    child: const Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: Container(
                    height: 160,
                    margin: const EdgeInsets.symmetric(vertical: 0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Categories.length,
                        itemBuilder: (BuildContext context, int index) {
                          String category = Categories[index];
                          String categoriesName = CategoriesName[index];
                          return Column(
                            children: [
                              Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: const BorderSide(
                                        color: Colors.white, width: 2)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          categoriesName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        category,
                                        fit: BoxFit.cover,
                                        width: 120,
                                        height: 120,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'best seller',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        '<View all',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: MyColors.hikightgrey),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1 / 1.20,
                    children: List.generate(Categories.length, (index) {
                      String category = Categories[index];
                      String categoriesName = CategoriesName[index];
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
                                      color: MyColors.green,
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
                                  height: 160,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 80,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                        color: Colors.orange,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          AppStrings.name,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              height: 1.2,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
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
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      padding: const EdgeInsets.only(left: -10),
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
                                          fontSize: 16.0, color: Colors.white),
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
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  items: bannersBottom
                      .map((banner) => SizedBox(
                            width: double.infinity,
                            child: Card(
                              elevation: 3,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                side: BorderSide(color: Colors.white, width: 2),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: Image.asset(
                                  banner,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    initialPage: 0,
                    viewportFraction: 1.00,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Shop by offers',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        '<View all',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(10),
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: MyColors.ofred),
                              child: const Column(
                                children: [
                                  Text(
                                    'Character',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '50 %',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text('Discount',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(10),
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Colors.blue),
                              child: const Column(
                                children: [
                                  Text(
                                    'Character',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '40%',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text('Discount',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(10),
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Colors.purple),
                              child: const Column(
                                children: [
                                  Text(
                                    'Character',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '30%',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text('Discount',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(15),
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: MyColors.pap),
                              child: const Column(
                                children: [
                                  Text(
                                    'Choices of the month',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(10),
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: MyColors.lol),
                              child: const Column(
                                children: [
                                  Text(
                                    'Less',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '99 EL',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(10),
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Colors.orange),
                              child: const Column(
                                children: [
                                  Text(
                                    'Boy 1',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text('Take 1',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Text(
                                    'Free',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Fresh and fast',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: MyColors.hikightgrey),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1 / 1.20,
                    children: List.generate(Categories.length, (index) {
                      String category = Categories[index];
                      String categoriesName = CategoriesName[index];
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
                                      color: MyColors.green,
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
                                  height: 160,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 80,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                        color: Colors.orange,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          AppStrings.name,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              height: 1.2,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
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
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      padding: const EdgeInsets.only(left: -10),
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
                                          fontSize: 16.0, color: Colors.white),
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
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  items: bannersBottom
                      .map((banner) => SizedBox(
                            width: double.infinity,
                            child: Card(
                              elevation: 3,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                side: BorderSide(color: Colors.white, width: 2),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: Image.asset(
                                  banner,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    initialPage: 0,
                    viewportFraction: 1.00,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'take the chance',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        '<View all',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        String category = Categories[index];
                        String categoriesName = CategoriesName[index];
                        return Column(
                          children: [
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: const BorderSide(
                                      color: Colors.white, width: 2)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        categoriesName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      category,
                                      fit: BoxFit.cover,
                                      width: 120,
                                      height: 120,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}

// 01013373531
