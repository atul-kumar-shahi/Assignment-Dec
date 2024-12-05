import 'package:assignment/components/TwoProfile.dart';
import 'package:assignment/components/customPost.dart';
import 'package:assignment/components/reques.dart';
import 'package:assignment/pages/Request.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Recents',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomNotificationItem(
              name: 'Shahrukh Khan',
              profileUrl: 'assets/images/image.png',
              onAccept: () {},
              onReject: () {}),
          SizedBox(
            height: 10,
          ),
          CustomNotificationItem(
              name: 'Riya Mehra',
              profileUrl: 'assets/images/riya.png',
              onAccept: () {},
              onReject: () {}),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AllRequests()));
                  },
                  child: Text(
                    'view more',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Yesterday',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          PostLikeNotificationItem(name: 'Riya Mehra                             ', profileUrl: 'assets/images/riya.png', postImageUrl: 'assets/images/image 10.png',postType: ' liked ',did: 'your post',),
          SizedBox(
            height: 5,
          ),
          CustomNotificationItem(
              name: 'Kabir Diwan',
              profileUrl: 'assets/images/kabir.png',
              onAccept: () {},
              onReject: () {}),
          SizedBox(
            height: 5,
          ),
          PostLikeNotificationItem(name: 'Aditi Maheshwari ', profileUrl: 'assets/images/aditi.png', postImageUrl: 'assets/images/image 10.png',postType: ' commented:  ',did: 'Beautiful',),
          SizedBox(
            height: 5,
          ),
          // StoryLikeNotificationItem(userNames: 'Riya Mehra, Kabir Diwan and others', firstProfileUrl:'assets/images/aditi.png', secondProfileUrl: 'assets/images/kabir.png', storyThumbnailUrl: 'assets/images/image 10.png'),
        StoryLikeNotificationItem(names:['Riya Mehra', 'Kabir Diwan'] , profileUrls: ['assets/images/riya.png','assets/images/kabir.png'], postImageUrl:'assets/images/image 10.png' )
        ],
      ),
    );
  }
}
