import 'package:flutter/material.dart';

class CustomNotificationItem extends StatelessWidget {
  final String name;
  final String profileUrl;
  final VoidCallback onAccept;
  final VoidCallback onReject;

  const CustomNotificationItem({super.key,required this.name, required this.profileUrl, required this.onAccept, required this.onReject});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.black, // Background color
      ),
      child: Row(
        children: [
          // Profile Image
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              profileUrl, // Replace with the actual image URL
            ),
          ),
          SizedBox(width: 20), // Space between the image and text

          // Name and Button
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // User Name
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                // Accept Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 176, 148, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical:2),
                  ),
                  child: Text(
                    'Accept',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),

          // Close Icon
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.close, color: Colors.white),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
        ],
      ),
    );
  }
}
