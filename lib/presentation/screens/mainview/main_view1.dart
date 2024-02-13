import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/screens/mainview/categories_screen/categories_screen.dart';
import 'package:selaty/presentation/screens/mainview/favorit_screen/favorit_screen.dart';
import 'package:selaty/presentation/screens/mainview/notifictions_screen.dart';
import 'package:selaty/presentation/screens/mainview/profile_screen/profile_screen.dart';
import 'package:selaty/presentation/screens/mainview/search_screen.dart';

class MainView1 extends StatefulWidget {
  const MainView1({super.key});

  @override
  State<MainView1> createState() => _MainView1State();
}

class _MainView1State extends State<MainView1> {
  List<Widget> pages1 = [
    SearchScreen(),
    const FavoriteScreen(),
    const CategoriesScreen(),
    const NotificationsScreen(),
    const ProfileScreen()
  ];
  List<String> titles1 = [
    AppStrings.search,
    AppStrings.favorite,
    AppStrings.categories,
    AppStrings.notifications,
    AppStrings.profile,
  ];

  var _title1 = AppStrings.profile;
  var _currentIndex1 = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.hikightgrey,
      appBar: AppBar(
        backgroundColor: MyColors.hikightgrey,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              disabledColor: Colors.white,
              icon: Container(
                  color: Colors.white,
                  child: const Icon(
                    Icons.menu,
                  )),
              onPressed: () {},
            );
          },
        ),
        actions: [
          IconButton(
            icon: Container(
              color: Colors.white,
              child: const Icon(
                Icons.settings_applications_outlined,
              ),
            ),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        title: Center(
          child: Text(
            _title1,
            // Theme.of(context).textTheme.titleSmall
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: pages1[_currentIndex1],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)]),
        child: ConvexAppBar(
            color: Colors.grey,
            activeColor: MyColors.green,
            backgroundColor: Colors.white,
            initialActiveIndex: _currentIndex1,
            onTap: onTap,
            items: const [
              TabItem(
                icon: Icon(
                  Icons.search,
                ),
                title: AppStrings.search,
              ),
              TabItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
                title: AppStrings.favorite,
              ),
              TabItem(
                icon: Icon(
                  Icons.home,
                ),
                title: AppStrings.home,
              ),
              TabItem(
                icon: Icon(
                  Icons.notifications_none_outlined,
                ),
                title: AppStrings.notifications,
              ),
              TabItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                title: AppStrings.profile,
              ),
            ]),
      ),
    );
  }

  onTap(int index) {
    setState(() {
      _currentIndex1 = index;
      _title1 = titles1[index];
    });
  }
}
