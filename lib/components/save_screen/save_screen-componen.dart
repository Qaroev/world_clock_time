import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SaveScreen extends StatefulWidget {
  @override
  _SaveScreenState createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 18, right: 18, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                        'Astana',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.delete,
                        color: Color(0xFF7494F6),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Color.fromRGBO(118, 118, 128, 0.12),
                          elevation: 0,
                          borderOnForeground: true,
                          child: ListTile(
                            title: TextField(
                              decoration: new InputDecoration(
                                  hintText: 'Card’s name',
                                  border: InputBorder.none),
                              // onChanged: onSearchTextChanged,
                            ),
                          ))),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2994A),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFF6FCF97),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2C94C),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFF2F80ED),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFF56CCF2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFF9B51E0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFF219653),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFBB6BD9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: GestureDetector(
                  onTap: () => Modular.to.pushNamed('/restore-two'),
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF7494F6),
                    ),
                    child: Center(
                        child: Text('Save',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 18,
                                fontWeight: FontWeight.normal))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
