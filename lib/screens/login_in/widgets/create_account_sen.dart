import 'package:flutter/material.dart';
import 'package:flutter_application_1/regisyer_viem.dart';

class CreateAccountSentence extends StatelessWidget {
  const CreateAccountSentence({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('if you have not an account'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const RegisterView()));
                    },
                    child: Text(
                      'Create one!',
                      style: TextStyle(color: Colors.teal[400]),
                    ))
              ],
            );
  }
}