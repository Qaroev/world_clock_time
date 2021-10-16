import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/services/main-service.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  MainService _mainService = Modular.get<MainService>();
  TextEditingController controller = new TextEditingController();
  var listItem;
  var _searchResult = [];
  var feature;

  @override
  void initState() {
    super.initState();
    feature = _mainService.getListTimeZone();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Modular.to.pushNamed('/save-screen'),
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Color(0xFF007AFF),
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
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
                                controller: controller,
                                decoration: new InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none),
                                onChanged: onSearchTextChanged,
                              ),
                            ))),
                  ],
                ),
              ),
              SizedBox(height: 10),
              FutureBuilder(
                future: feature, // async work
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return CircularProgressIndicator();
                    default:
                      if (snapshot.hasError)
                        return Text('Error: ${snapshot.error}');
                      else
                        listItem = snapshot.data;
                        return SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height - 120,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            color: Color(0xFFEAEAEA),
                            child: _searchResult.length == 0 ||
                                    controller.text.isEmpty
                                ? ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      ...listItem.map((item) {
                                        return Container(
                                          padding: EdgeInsets.only(top: 10),
                                          height: 45,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '$item',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              Divider(
                                                thickness: 2,
                                              ),
                                            ],
                                          ),
                                        );
                                      })
                                    ],
                                  )
                                : ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      ..._searchResult.map((item) {
                                        return Container(
                                          padding: EdgeInsets.only(top: 10),
                                          height: 45,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '$item',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              Divider(
                                                thickness: 2,
                                              ),
                                            ],
                                          ),
                                        );
                                      })
                                    ],
                                  ),
                          ),
                        );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  onSearchTextChanged(String text) async {
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    listItem.forEach((userDetail) {
      if (userDetail.contains(text) || userDetail.contains(text))
        _searchResult.add(userDetail);
    });

    setState(() {});
  }
}
