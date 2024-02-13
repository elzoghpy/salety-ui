import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';

class TrackOder extends StatelessWidget {
  const TrackOder({super.key});

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
                  Navigator.pushNamed(context, my_Requist);
                },
              );
            },
          ),
          title: const Center(
            child: Text(
              'Track Oder',
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: MyColors.green),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 53,
                            backgroundImage: AssetImage(ImageAssets.eleven),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          children: [
                            Text(
                              'Number Of Order:#051994',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Monday, 15 oct ,2024',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'Category Number:18',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Equal : 248EL',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: MyColors.green.withOpacity(.4),
                                radius: 30,
                                child: const Icon(
                                  Icons.shopping_basket,
                                  color: Colors.white,
                                  size: 45,
                                ),
                              ),
                              const Spacer(),
                              const Column(
                                children: [
                                  Text(
                                    'Request Is Done',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: MyColors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Oct 17 , 2024',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Container(
                              color: MyColors.green,
                              width: 2.5,
                              height: 40,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: MyColors.green.withOpacity(.4),
                                radius: 30,
                                child: const Icon(
                                  Icons.my_library_books_sharp,
                                  color: Colors.white,
                                  size: 45,
                                ),
                              ),
                              const Spacer(),
                              const Column(
                                children: [
                                  Text(
                                    'Order',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: MyColors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Oct 17 , 2024',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Container(
                              color: MyColors.green,
                              width: 2.5,
                              height: 40,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: MyColors.green.withOpacity(.4),
                                radius: 30,
                                child: const Icon(
                                  Icons.location_city_rounded,
                                  color: Colors.white,
                                  size: 45,
                                ),
                              ),
                              const Spacer(),
                              const Column(
                                children: [
                                  Text(
                                    'Charged',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: MyColors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Oct 17 , 2024',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Container(
                              color: Colors.grey,
                              width: 2.5,
                              height: 40,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.withOpacity(.4),
                                radius: 30,
                                child: const Icon(
                                  Icons.fire_truck,
                                  color: Colors.grey,
                                  size: 45,
                                ),
                              ),
                              const Spacer(),
                              const Column(
                                children: [
                                  Text(
                                    'Out Of Service',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Pending',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Container(
                              color: Colors.grey,
                              width: 2.5,
                              height: 40,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.withOpacity(.4),
                                radius: 30,
                                child: const Icon(
                                  Icons.shopify_outlined,
                                  color: Colors.grey,
                                  size: 45,
                                ),
                              ),
                              const Spacer(),
                              const Column(
                                children: [
                                  Text(
                                    'Sent Delivered Handed',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Pending',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
