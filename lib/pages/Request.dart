import 'package:flutter/material.dart';
import '../components/bottom_bar.dart';
import '../components/reques.dart';
import 'AddScreen.dart';
import 'FavouriteScreen.dart';
import 'HomePage.dart';
import 'ProfileScreen.dart';
import 'SearchPage.dart';


class AllRequests extends StatefulWidget {
  const AllRequests({super.key});

  @override
  State<AllRequests> createState() => _AllRequestsState();
}

class _AllRequestsState extends State<AllRequests> {
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
      appBar: AppBar(
        title: Text('Request'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Shahrukh Khan',
                profileUrl: 'assets/images/image.png',
                onAccept: () {},
                onReject: () {}),
            SizedBox(
              height: 15,
            ),
            CustomNotificationItem(
                name: 'Riya Mehra',
                profileUrl: 'assets/images/riya.png',
                onAccept: () {},
                onReject: () {}),

          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
