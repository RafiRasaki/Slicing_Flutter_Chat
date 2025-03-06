import 'dart:async';

import 'package:chat_apps/shared/themes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    Timer(Duration(seconds: 3),(() {
      Navigator.pushNamedAndRemoveUntil(
        context, '/home', (route) => false);
     })
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 240),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo-chatting.jpg'
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              height: 100,
              child: Column(
                children: [
                  Text(
                    'Chatting Apps',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: white,
                        letterSpacing: 3),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
             Container(
              //mobile
              //margin: EdgeInsets.only(top: 210),
              //desktop
              margin: EdgeInsets.only(top: 100),
              width: 120,
              height: 80,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(
                      fontSize: 20,
                      color: grey,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  //const SizedBox(height: 1),

                  Text(
                    'Indonesia',
                    style: TextStyle(
                      fontSize: 20,
                      color: white,
                      letterSpacing: 2
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
  