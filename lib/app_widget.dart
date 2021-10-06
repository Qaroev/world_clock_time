import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/restore_screen/restore_screen-component.dart';
import 'package:worldclocktime/components/restore_two_screen/restore_two_screen-component.dart';
import 'package:worldclocktime/components/splash_screen/splash_screen-component.dart';
class AppWidget extends StatefulWidget {

  @override
  AppWidgetState createState() => AppWidgetState();
}

class AppWidgetState extends State<AppWidget> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SF Pro Display'),
      initialRoute: '/restore-two',
      home: RestoreTwoScreen(),
    ).modular();
  }
}
