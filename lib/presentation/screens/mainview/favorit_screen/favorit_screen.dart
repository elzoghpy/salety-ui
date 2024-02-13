import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.hikightgrey,
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildIteamProducts(context),
        itemCount: 20,
      ),
    );
  }
}

Widget buildIteamProducts(context) => Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        height: 120,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              InkWell(
                onTap: () {},
                child: const ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                  child: Image(
                    image: AssetImage(ImageAssets.onboarding3Image),
                    width: 120,
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        AppStrings.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14.0,
                            height: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_forever,
                            color: MyColors.red,
                            size: 35,
                          ))
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        AppStrings.price.toString(),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const CircleAvatar(
                            radius: 18.0,
                            child: Icon(
                              Icons.favorite_border,
                              color: MyColors.green,
                              size: 30,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
