import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationBar/NavigationBar.dart';
import 'package:flutter_application_1/NavigationBar/NavigationExample.dart';
import 'package:flutter_application_1/home-view.dart';
import 'package:flutter_application_1/regisyer_viem.dart';
import 'package:flutter_application_1/screens/login_in/widgets/Image&welcome_view.dart';
import 'package:flutter_application_1/screens/login_in/widgets/create_account_sen.dart';
import 'package:flutter_application_1/screens/login_in/widgets/custom_text_field.dart';
import 'package:flutter_application_1/screens/login_in/widgets/log_in_button.dart';
import 'package:flutter_application_1/test.dart';

class LoginViem extends StatefulWidget {
  const LoginViem({super.key});

  @override
  State<LoginViem> createState() => _LoginViemState();
}

class _LoginViemState extends State<LoginViem> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          //main column carry the page
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Column content 
            SizedBox(height: 120),
            ImageAndWelcomeView(),
            SizedBox(height: 30),
            CustomTextField(obscureText: false,label: 'Email',prefixIcon: Icons.email,),
            SizedBox(height: 20,),
            CustomTextField(obscureText: true,label: 'Password',prefixIcon: Icons.lock, suffixIcon: Icons.remove_red_eye),
            SizedBox(height: 20,),
            LogInButton(),
            SizedBox(height: 20,),
            CreateAccountSentence()
          ],
        )),
      ),
    )));
  }
}
