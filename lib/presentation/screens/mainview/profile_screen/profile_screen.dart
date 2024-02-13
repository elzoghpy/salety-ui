import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.hikightgrey,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 200.0,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50.0,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: MyColors.hikightgrey),
                                ),
                                Container(
                                  height: 140,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: MyColors.green),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          const CircleAvatar(
                            radius: 64.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 62.0,
                              backgroundImage:
                                  AssetImage(ImageAssets.onboarding1Image),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const CircleAvatar(
                              backgroundColor: MyColors.ofred,
                              radius: 20.0,
                              child: Icon(
                                Icons.camera_alt_rounded,
                                size: 21,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 140.0),
                            child: Column(
                              children: [
                                Text(
                                  AppStrings.name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  AppStrings.email,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.person_2,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.profile)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, my_Requist);
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.shopping_bag_rounded,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.myrequests)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.credit_card,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.payments)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, favorite);
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.favorite)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, favorite);
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.transactions)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, cartScreen);
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.shopping_cart_outlined,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.cart)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.location)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.notifications,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.notification)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.ofwhite),
                                child: const Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.settings,
                                        color: MyColors.ofred,
                                      ),
                                      Spacer(),
                                      Text(AppStrings.settings)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 100,
                              height: 150,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: MyColors.ofred),
                              child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.people_outline_sharp,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                    Spacer(),
                                    Text(
                                      AppStrings.supportCenter,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, loginScreen);
                              },
                              child: Container(
                                width: 100,
                                height: 150,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: MyColors.green),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(.2),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10))),
                                        child: const Icon(
                                          Icons.output_rounded,
                                          size: 60,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Text(AppStrings.getOut,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
