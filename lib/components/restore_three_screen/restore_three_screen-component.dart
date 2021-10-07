import 'package:flutter/material.dart';

class RestoreThreeScreen extends StatefulWidget {
  @override
  RestoreThreeScreenState createState() => new RestoreThreeScreenState();
}

class RestoreThreeScreenState extends State<RestoreThreeScreen> {
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'assets/Vector.png',
                  fit: BoxFit.cover,
                  width: 210,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    "Let the world clock always  be with you",
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
                  width: 339,
                  child: Text(
                    "Simple design and useful notes make it possible",
                    style: TextStyle(
                        color: Color(0xFF909090),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 61,
                ),
                Container(
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
                          color: Color(0xFF7494F6),
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFBDBDBD),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 339,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF7494F6),
                  ),
                  child: Center(
                      child: Text('Next',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.normal))),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
