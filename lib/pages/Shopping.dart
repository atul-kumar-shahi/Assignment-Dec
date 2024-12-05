import 'package:assignment/components/ShoppingItem.dart';
import 'package:assignment/components/otp.dart';
import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent',style: TextStyle(color: Colors.white,fontSize: 20),),
          SizedBox(height: 20,),
          OrderDispatchNotification(orderDate: '21 Nov', orderTime: '04:15 PM'),
          SizedBox(height: 15,),
          Otp(),
          SizedBox(height: 15,),
          Text('Yesterday',style: TextStyle(color: Colors.white,fontSize: 20),),
          SizedBox(height: 15,),
          OrderDispatchNotification(orderDate: '21 Nov', orderTime: '04:15 PM'),
          SizedBox(height: 15,),
          Otp(),
        ],
      ),
    );
  }
}