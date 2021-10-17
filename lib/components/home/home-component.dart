import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:worldclocktime/models/main-model.dart';

class HomeComponent extends StatefulWidget {
  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  List<MainModel>? mainItems;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    await prefs.reload();
    var value =
        await _prefs.then((value) => prefs.getString('controlStudentsData'));
    if (value != null) {
      mainItems = MainModel.decode(value);
//      prefs.clear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 18, right: 18, top: 18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Modular.to.pushNamed('/settings-screen'),
                      child: Icon(
                        Icons.settings,
                        color: Color(0xFF7494F6),
                      ),
                    ),
                    Text(
                      'World Clock',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Modular.to.pushNamed('/add-screen'),
                      child: Icon(
                        Icons.add,
                        color: Color(0xFF7494F6),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                getListItem()
              ],
            ),
          ),
        ),
      ),
    );
  }

  getListItem() {
    if (mainItems != null) {
      List<Widget> list = [];
      mainItems!.forEach((element) {
        list.add(Column(
          children: [
            Container(
              height: 100,
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
                contentPadding: EdgeInsets.all(0),
                minVerticalPadding: 0,
                dense: true,
                title: Row(
                  children: [
                    Container(
                      width: 15,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        color: element.color == ''
                            ? Color.fromRGBO(0, 0, 0, 0.1)
                            : Color(int.parse(element.color!)),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${element.cardName}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                trailing: Container(
                  padding: const EdgeInsets.only(right: 20, top: 13),
                  child: Text(
                    '23:13',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ));
      });

      return Container(
        height: MediaQuery.of(context).size.height - 110,
        child: ListView(
          shrinkWrap: true,
          children: list,
        ),
      );
    }
    return Container();
  }
}
