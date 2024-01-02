import 'package:flutter/material.dart';

class ImageAndWelcomeView extends StatelessWidget {
  const ImageAndWelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/4.jpg'),
            ),
             const SizedBox(
              height: 30,
            ),
            Text(
              'Welocme to Agribot',
              style: TextStyle(fontSize: 20, color: Colors.teal[400]),
            ),
      ],
    );
  }
}