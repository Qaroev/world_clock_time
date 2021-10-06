import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {



  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
  }


  @override
  dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
              width: 210,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "World Clock",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              " Time & Widget",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
