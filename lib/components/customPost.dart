import 'package:flutter/material.dart';

class PostLikeNotificationItem extends StatelessWidget {
  final String name;
  final String profileUrl;
  final String postImageUrl;
  final String postType;
  final String did;

  const PostLikeNotificationItem({
    super.key,
    required this.name,
    required this.profileUrl,
    required this.postImageUrl, required this.postType, required this.did,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black, // Background color
      ),
      child: Row(
        children: [
          // Profile Image
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(profileUrl),
          ),
          SizedBox(width: 12), // Space between the profile image and text

          // Notification Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name and "liked your post" message
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: RichText(
                    text: TextSpan(
                      text: name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: postType,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        TextSpan(
                          text: did,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 4), // Space between text rows
              ],
            ),
          ),

          // Post Thumbnail
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
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
