import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/screens/mainview/categories_screen/categories_screen.dart';
import 'package:selaty/presentation/screens/mainview/favorit_screen/favorit_screen.dart';
import 'package:selaty/presentation/screens/mainview/notifictions_screen.dart';
import 'package:selaty/presentation/screens/mainview/profile_screen/profile_screen.dart';
import 'package:selaty/presentation/screens/mainview/search_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = [
    SearchScreen(),
    const FavoriteScreen(),
    const CategoriesScreen(),
    const NotificationsScreen(),
    const ProfileScreen()
  ];
  List<String> titles = [
    AppStrings.search,
    AppStrings.favorite,
    AppStrings.home,
    AppStrings.notifications,
    AppStrings.profile,
  ];

  var _title = AppStrings.categories;
  var _currentIndex = 2;
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
            _title,
            // Theme.of(context).textTheme.titleSmall
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)]),
        child: ConvexAppBar(
            color: Colors.grey,
            activeColor: MyColors.green,
            backgroundColor: Colors.white,
            initialActiveIndex: _currentIndex,
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
      _currentIndex = index;
      _title = titles[index];
    });
  }
}
