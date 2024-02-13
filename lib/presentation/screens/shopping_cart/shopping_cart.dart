import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

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
                Navigator.pushNamed(context, fruitsScreen);
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
            icon: const Icon(Icons.settings_applications_outlined),
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
                    color: Colors.white),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Center(
                        child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 150,
                      color: MyColors.red,
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Shopping Cart Clear !',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Center(
                        child: Text(
                          'Make your Shopping Bag Happy Or Add More Catagories',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: defaultButton(
                          text: 'Start Shopping',
                          function: () {
                            Navigator.pushNamed(context, homeScreen);
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
