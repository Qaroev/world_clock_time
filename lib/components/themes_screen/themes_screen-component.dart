import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:worldclocktime/services/token/token_service.dart';

class ThemesScreen extends StatefulWidget {
  @override
  ThemesScreenState createState() => new ThemesScreenState();
}

class ThemesScreenState extends State<ThemesScreen> {
  TokenService _tokenService = TokenService();
  bool blueWhite = false;
  bool greenWhite = false;
  bool redWhite = false;
  bool blueDark = false;
  bool purpleDark = false;

  @override
  dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    await prefs.reload();
    var color = await _prefs.then((value) => prefs.getString('color'));
    print('color $color');
    if (color != null) {
      if (color == '0xFF7494F6') {
        blueWhite = true;
      }
      if (color == '0xFF4FA042') {
        greenWhite = true;
      }
      if (color == '0xFF953E3E') {
        redWhite = true;
      }
      if (color == '0xFF4769CE') {
        blueDark = true;
      }
      if (color == '0xFFA146C2') {
        purpleDark = true;
      }
      setState(() {});
    }
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
                onTap: () => {
                  setState(() {
                    this.blueWhite = !blueWhite;
                    purpleDark = blueDark = redWhite = greenWhite = false;
                    _tokenService.removeData('color');
                    _tokenService.saveData('color', '0xFF7494F6');
                  })
                },
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
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Checkbox(
                        value: blueWhite,
                        side: BorderSide.none,
                        activeColor: Colors.white,
                        checkColor: Color(0xFF7494F6),
                        onChanged: (bool? value) {
                          setState(() {
                            this.blueWhite = value!;
                            purpleDark =
                                blueDark = redWhite = greenWhite = false;
                            _tokenService.removeData('color');
                            _tokenService.saveData('color', '0xFF7494F6');
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => {
                  setState(() {
                    this.greenWhite = !greenWhite;
                    purpleDark = blueWhite = blueDark = redWhite = false;
                    _tokenService.removeData('color');
                    _tokenService.saveData('color', '0xFF4FA042');
                  })
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF4FA042),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
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
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Checkbox(
                        value: greenWhite,
                        side: BorderSide.none,
                        activeColor: Colors.white,
                        checkColor: Color(0xFF7494F6),
                        onChanged: (bool? value) {
                          setState(() {
                            this.greenWhite = value!;
                            purpleDark =
                                blueWhite = blueDark = redWhite = false;
                            _tokenService.removeData('color');
                            _tokenService.saveData('color', '0xFF4FA042');
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => {
                  setState(() {
                    this.redWhite = !redWhite;
                    purpleDark = greenWhite = blueWhite = blueDark = false;
                    _tokenService.removeData('color');
                    _tokenService.saveData('color', '0xFF953E3E');
                  })
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF953E3E),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
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
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Checkbox(
                        value: redWhite,
                        side: BorderSide.none,
                        activeColor: Colors.white,
                        checkColor: Color(0xFF7494F6),
                        onChanged: (bool? value) {
                          setState(() {
                            this.redWhite = value!;
                            purpleDark =
                                greenWhite = blueWhite = blueDark = false;
                            _tokenService.removeData('color');
                            _tokenService.saveData('color', '0xFF953E3E');
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => {
                  setState(() {
                    this.blueDark = !blueDark;
                    purpleDark = greenWhite = blueWhite = redWhite = false;
                    _tokenService.removeData('color');
                    _tokenService.saveData('color', '0xFF4769CE');
                  })
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF4769CE),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
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
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Checkbox(
                        value: blueDark,
                        side: BorderSide.none,
                        activeColor: Colors.white,
                        checkColor: Color(0xFF7494F6),
                        onChanged: (bool? value) {
                          setState(() {
                            this.blueDark = value!;
                            purpleDark =
                                greenWhite = blueWhite = redWhite = false;
                            _tokenService.removeData('color');
                            _tokenService.saveData('color', '0xFF4769CE');
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () => {
                  setState(() {
                    this.purpleDark = !purpleDark;
                    blueDark = greenWhite = blueWhite = redWhite = false;
                    _tokenService.removeData('color');
                    _tokenService.saveData('color', '0xFFA146C2');
                  })
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFA146C2),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
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
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Checkbox(
                        value: purpleDark,
                        side: BorderSide.none,
                        activeColor: Colors.white,
                        checkColor: Color(0xFF7494F6),
                        onChanged: (bool? value) {
                          setState(() {
                            this.purpleDark = value!;
                            blueDark =
                                greenWhite = blueWhite = redWhite = false;
                            _tokenService.removeData('color');
                            _tokenService.saveData('color', '0xFFA146C2');
                          });
                        },
                      ),
                    ),
                  ),
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
