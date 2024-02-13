// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class MobileCartScreen extends StatelessWidget {
  const MobileCartScreen({super.key});

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
                Navigator.pushNamed(context, mainView1);
              },
            );
          },
        ),
        title: const Center(
          child: Text(
            'CART',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 120, top: 20, right: 20),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '2 x 35.0El',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: MyColors.green),
                                            ),
                                            Text(
                                              'Mango',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              '3 Kg',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text(
                                              '-',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              '3',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              '+',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ])),
                      );
                    }),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: MyColors.hikightgrey),
                        child: GridView.count(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 1,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1 / .4,
                          children: List.generate(1, (index) {
                            return Container(
                                height: 90,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: Colors.white,
                                ),
                                child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, top: 20, right: 20),
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Category Number',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black54),
                                                ),
                                                Text(
                                                  'Price',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black54),
                                                ),
                                                Text(
                                                  'Delivery',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black54),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  'Total Price',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '6',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black54),
                                                ),
                                                Text(
                                                  '289 EL',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black54),
                                                ),
                                                Text(
                                                  'FRee',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black54),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  '576 El',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ]));
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: defaultButton(text: 'Cash', function: () {}),
            )
          ],
        ),
      ),
    );
  }
}
