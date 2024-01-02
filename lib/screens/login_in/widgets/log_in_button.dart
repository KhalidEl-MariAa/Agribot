import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationBar/NavigationExample.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) =>  const NavigationExample2(),
                  ));
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.teal[400]),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ));
  }
}