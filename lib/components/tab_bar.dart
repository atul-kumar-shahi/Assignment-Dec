import 'package:assignment/pages/Shopping.dart';
import 'package:assignment/pages/social_media.dart';
import 'package:flutter/material.dart';

import '../pages/AddScreen.dart';
import '../pages/FavouriteScreen.dart';
import '../pages/HomePage.dart';
import '../pages/ProfileScreen.dart';
import '../pages/SearchPage.dart';
import 'bottom_bar.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    final List<Widget> _pages = [
      HomeScreen(),
      FavoritesScreen(),
      AddScreen(),
      SearchScreen(),
      ProfileScreen(),
    ];
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: false,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'Social Media'),
                    Tab(text: 'Shopping'),
                  ],
                  labelStyle: TextStyle(
                    fontSize: 18,

                  ),
                  labelPadding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  dividerColor: Colors.transparent,
                  indicatorWeight: 2,
                  indicatorColor:Color.fromARGB(255, 176, 148, 255),
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.white,
                  labelColor:Color.fromARGB(255, 176, 148, 255),

                  indicatorPadding: EdgeInsets.only(
                   bottom: 65,left: 30,right: 30
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SocialMedia(),
            Shopping(),
          ],
        ),

        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
