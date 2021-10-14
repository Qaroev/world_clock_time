import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ThemesScreen extends StatefulWidget {
  @override
  ThemesScreenState createState() => new ThemesScreenState();
}

class ThemesScreenState extends State<ThemesScreen> {


  @override
  dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 18, right: 18, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Modular.to.pop(),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF7494F6),
                    ),
                  ),
                  Text(
                    'Themes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(),
                ],
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () => Modular.to.pushNamed('/themes-screen'),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF7494F6),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
                    minVerticalPadding: 0,
                    dense: true,
                    title: Text(
                      'BLUE-WHITE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF4FA042),
                ),
                child: ListTile(
                  contentPadding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    'GREEN-WHITE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF953E3E),
                ),
                child: ListTile(
                  contentPadding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    'RED-WHITE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF4769CE),
                ),
                child: ListTile(
                  contentPadding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    'BLUE-DARK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                     child: Checkbox(
                       value: true,
                       onChanged: (bool? value) {
//                         setState(() {
//                           this.value = value;
//                         });
                       },
                     ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFA146C2),
                ),
                child: ListTile(
                  contentPadding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    'PURPLE-DARK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
