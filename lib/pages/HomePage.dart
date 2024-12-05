import 'package:assignment/pages/NotificationPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notificationpage()));
            }, icon: Icon(Icons.notification_add,color: Color.fromARGB(255, 176, 148, 255),)),
          )
        ],
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home Screen Content',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
