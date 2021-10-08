import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 18, right: 18),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Modular.to.pop(),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Color(0xFF007AFF),
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Text(
                    'Add City',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Add',
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
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
                        leading: Icon(Icons.search),
                        title: TextField(
                          decoration: new InputDecoration(
                              hintText: 'Search', border: InputBorder.none),
                          // onChanged: onSearchTextChanged,
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
