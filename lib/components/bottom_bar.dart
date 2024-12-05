import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends State<CustomBottomNavigationBar> {
  final Color selectedColor = Color.fromARGB(255, 176, 148, 255); // Define selected color
  final Color unselectedColor =  Color.fromARGB(255, 13, 13, 15); // Define unselected color

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / 5;

    return Stack(
      children: [
        // Full navbar container with default border color (black)
        Container(
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 13, 13, 15) ,
            border: Border(
              top: BorderSide(color:Color.fromARGB(255, 13, 13, 15), width: 2),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 13, 13, 15),
            items: [
              BottomNavigationBarItem(
                icon: _buildNavItem(
                  icon: Icons.home_outlined,
                  isActive: widget.selectedIndex == 0,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _buildNavItem(
                  icon: Icons.star_border,
                  isActive: widget.selectedIndex == 1,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildNavItem(
                  icon: Icons.add_circle_outline,
                  isActive: widget.selectedIndex == 2,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildNavItem(
                  icon: Icons.search_outlined,
                  isActive: widget.selectedIndex == 3,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildNavItem(
                  icon: Icons.account_circle,
                  isActive: widget.selectedIndex == 4,
                  isProfile: true,
                ),
                label: '',
              ),
            ],
            currentIndex: widget.selectedIndex,
            selectedItemColor: selectedColor,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: widget.onItemTapped,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        // Add the colored top border dynamically for the selected item
        Positioned(
          top: 0,
          left: itemWidth * widget.selectedIndex,
          child: Container(
            width: itemWidth,
            height: 2,
            color: selectedColor, // Active item border color
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required bool isActive,
    bool isProfile = false,
  }) {
    return isProfile
        ? CircleAvatar(
      radius: 12,
      backgroundImage: AssetImage('assets/images/image 5.png'),
    )
        : Icon(
      icon,
      color: isActive ? selectedColor : Colors.white,
    );
  }
}
