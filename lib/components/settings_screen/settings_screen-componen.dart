import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Settings',
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color.fromRGBO(142, 156, 182, 0.28),
                      blurRadius: 2,
                      offset: Offset(4, 8),
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    'Themes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color.fromRGBO(142, 156, 182, 0.28),
                      blurRadius: 2,
                      offset: Offset(4, 8),
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  minVerticalPadding: 0,
                  dense: true,
                  title: Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.black,
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
