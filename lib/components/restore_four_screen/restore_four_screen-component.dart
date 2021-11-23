import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RestoreFourScreen extends StatefulWidget {
  @override
  RestoreFourScreenState createState() => new RestoreFourScreenState();
}

class RestoreFourScreenState extends State<RestoreFourScreen> {
  bool isFlag = false;

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Icon(
          Icons.close,
          size: 34,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Container(),
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
              width: 210,
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Your perfect World Clock Time",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Text(
                    "Subscribe to unlock all the features, just \$3.99/w",
                    style: TextStyle(
                        color: Color(0xFF909090),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
            Column(
              children: [
                !isFlag
                    ? Container(
                        width: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF7494F6),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    if (!isFlag) {
                      setState(() {
                        isFlag = true;
                      });
                    } else {
                      Modular.to.pushNamed('/home');
                    }
                  },
                  child: Container(
                    width: 339,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF7494F6),
                    ),
                    child: Center(
                        child: Text('Continue',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 18,
                                fontWeight: FontWeight.normal))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                                color: Color(0xFF909090),
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                                color: Color(0xFF909090),
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            'Terms of Use',
                            style: TextStyle(
                                color: Color(0xFF909090),
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Restore purchases',
                        style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                )
              ],
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
