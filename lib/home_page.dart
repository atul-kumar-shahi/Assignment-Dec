import 'package:assignment/pages/AddScreen.dart';
import 'package:assignment/pages/FavouriteScreen.dart';
import 'package:assignment/pages/HomePage.dart';
import 'package:assignment/pages/ProfileScreen.dart';
import 'package:assignment/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';


class MainNavigationScreen extends StatefulWidget {
  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),

      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}




