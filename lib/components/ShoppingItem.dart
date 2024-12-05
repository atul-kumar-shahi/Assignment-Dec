import 'package:flutter/material.dart';

class OrderDispatchNotification extends StatelessWidget {
  final String orderDate;
  final String orderTime;

  OrderDispatchNotification({
    required this.orderDate,
    required this.orderTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/images/image 11.png',
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your order from Hoodie is',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200
                  ),
                ),
                Text(
                  'dispatched at $orderDate, $orderTime',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}