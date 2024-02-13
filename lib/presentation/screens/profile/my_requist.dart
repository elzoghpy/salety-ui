// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class My_Requist extends StatelessWidget {
  const My_Requist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.hikightgrey,
      appBar: AppBar(
        backgroundColor: MyColors.hikightgrey,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(Icons.arrow_back_ios),
                  )),
              onPressed: () {
                Navigator.pushNamed(context, profileScreen);
              },
            );
          },
        ),
        title: const Center(
          child: Text(
            'Shopping Cart',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            icon: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white),
                child: const Icon(Icons.settings_applications_outlined)),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.hikightgrey,
            statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 10, left: 10, bottom: 100),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: MyColors.green),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Center(
                      child: Image(
                        image: AssetImage(ImageAssets.bagImage),
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Success Order !',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Center(
                        child: Text(
                          'Thanks For Order. You Will Take A Response About A Few Minutes',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: defaultButton(
                          background: MyColors.blueblack,
                          text: 'Track Order',
                          function: () {
                            Navigator.pushNamed(context, trackOrder);
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
