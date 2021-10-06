import 'package:flutter/material.dart';

class RestoreTwoScreen extends StatefulWidget {
  @override
  RestoreTwoScreenState createState() => new RestoreTwoScreenState();
}

class RestoreTwoScreenState extends State<RestoreTwoScreen> {
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
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFFFFF),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color.fromRGBO(142, 156, 182, 0.28),
                        blurRadius: 2,
                        offset: Offset(4, 8),
                      ),
                    ],
                  ),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 12,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 295,
                        child: Text(
                          'Without a doubt, this is a tool that performs just exactly what you require of it.',
                          style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFFFFF),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color.fromRGBO(142, 156, 182, 0.28),
                        blurRadius: 2,
                        offset: Offset(4, 8),
                      ),
                    ],
                  ),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 12,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                              Image.asset('assets/star.png'),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 295,
                        child: Text(
                          'Without a doubt, this is a tool that performs just exactly what you require of it.',
                          style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                ),
                Container(
                  child: Text(
                    "Help us to improve the app",
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
                    "We constantly monitor feedback and need your opinion",
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
                      child: Text('Continue',
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
