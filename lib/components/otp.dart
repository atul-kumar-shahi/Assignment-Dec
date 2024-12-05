import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
              'assets/images/image 12.png',
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your OTP for Order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w200
                ),
              ),
              RichText(
                  text: const TextSpan(
                text:'from Bags ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,

                    ),
                    children: [
                      TextSpan(
                        text: 'is 4567',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        )
                      )
                    ]
              ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
