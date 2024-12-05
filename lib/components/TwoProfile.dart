import 'package:flutter/material.dart';

class StoryLikeNotificationItem extends StatelessWidget {
  final List<String> names;
  final List<String> profileUrls;
  final String postImageUrl;

  const StoryLikeNotificationItem({
    super.key,
    required this.names,
    required this.profileUrls,
    required this.postImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      constraints: BoxConstraints(minHeight: 60), // Ensures the widget has a minimum height
      decoration: BoxDecoration(
        color: Colors.black, // Background color
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Overlapping Profile Images
          SizedBox(
            width: 60, // Define a fixed width for the overlapping images
            height: 40, // Define a fixed height for the `Stack`
            child: Stack(
              children: List.generate(
                2, // Show only two profile images
                    (index) {
                  return Positioned(
                    left: index * 20.0, // Adjust overlap amount (smaller value = more overlap)
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(profileUrls[index]),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(width: 12), // Space between the stacked images and text

          // Notification Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Prevents layout issues
              children: [
                // Names and "liked your story" message
                RichText(
                  text: TextSpan(
                    text: names.join(', ') + ' '+'    and others ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: 'liked your story',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200 ,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Post Thumbnail
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              postImageUrl,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
