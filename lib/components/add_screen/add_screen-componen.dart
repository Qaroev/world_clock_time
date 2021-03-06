import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:worldclocktime/services/main-service.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  MainService _mainService = Modular.get<MainService>();
  TextEditingController controller = new TextEditingController();
  List<dynamic>? listItem;
  var _searchResult = [];
  var feature;
  int indexItem = -1;

  @override
  void initState() {
    super.initState();
    feature = _mainService.getListTimeZone();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(_mainService.isDark ? 0xFF202020 : 0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 18, right: 18, top: 25),
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
                            color: _mainService.isDark
                                ? Colors.white
                                : Colors.black,
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
                              leading: Icon(
                                Icons.search,
                                color: _mainService.isDark
                                    ? Color(0xFF8E8E93)
                                    : Colors.black,
                              ),
                              title: TextField(
                                controller: controller,
                                style: TextStyle(
                                    color: _mainService.isDark
                                        ? Colors.white
                                        : Colors.black,
                                    decoration: TextDecoration.none),
                                decoration: new InputDecoration(
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                      color: _mainService.isDark
                                          ? Color(0xFF8E8E93)
                                          : Colors.black,
                                    ),
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
                          color: Color(
                              _mainService.isDark ? 0xFF202020 : 0xFFEAEAEA),
                          child: _searchResult.length == 0 ||
                                  controller.text.isEmpty
                              ? ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    ...listItem!.map((item) {
                                      return InkWell(
                                        onTap: () {
                                          showLoaderDialog(context);
                                          indexItem = listItem!.indexOf(item);
                                          _mainService.mainModel!.name = item;
                                          _mainService
                                              .getTimeZone(item)
                                              .then((value) {
                                            Modular.to.pop();
                                            _mainService.mainModel!.utcOffset =
                                                value['utc_offset'];
                                            _mainService.mainModel!.time =
                                                getTime(value['datetime']);
                                            setState(() {});
                                          });
                                          setState(() {});
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(top: 10),
                                          height: 50,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '$item',
                                                    style: TextStyle(
                                                        color:
                                                            _mainService.isDark
                                                                ? Colors.white
                                                                : Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                  indexItem ==
                                                          listItem!
                                                              .indexOf(item)
                                                      ? Icon(
                                                          Icons.check,
                                                          color: Color(int.parse(
                                                              _mainService
                                                                  .iconColor)),
                                                        )
                                                      : Container()
                                                ],
                                              ),
                                              Divider(
                                                thickness: 2,
                                              ),
                                            ],
                                          ),
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
                                      return InkWell(
                                        onTap: () {
                                          indexItem =
                                              _searchResult.indexOf(item);
                                          _mainService.mainModel!.name = item;
                                          _mainService
                                              .getTimeZone(item)
                                              .then((value) {
                                            _mainService.mainModel!.utcOffset =
                                                value['utc_offset'];
                                            _mainService.mainModel!.time =
                                                getTime(value['datetime']);
                                            setState(() {});
                                          });
                                          setState(() {});
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(top: 10),
                                          height: 50,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '$item',
                                                    style: TextStyle(
                                                        color:
                                                            _mainService.isDark
                                                                ? Colors.white
                                                                : Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                  indexItem ==
                                                          _searchResult
                                                              .indexOf(item)
                                                      ? Icon(
                                                          Icons.check,
                                                          color: Color(int.parse(
                                                              _mainService
                                                                  .iconColor)),
                                                        )
                                                      : Container()
                                                ],
                                              ),
                                              Divider(
                                                thickness: 2,
                                              ),
                                            ],
                                          ),
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

  getTime(dateTimeString) {
    if (dateTimeString != '') {
      print(dateTimeString);
      var sp = dateTimeString.split('T')[1].split(':');
      return '${sp[0]}:${sp[1]}';
    }
    return '00:00';
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  onSearchTextChanged(String text) async {
    if (controller.text.isEmpty) {
      _searchResult = [];
      setState(() {});
      return;
    }
    _searchResult = [];
    for (var i = 0; i < listItem!.length; ++i) {
      var userDetail = listItem![i];
      if (userDetail.toLowerCase().contains(controller.text.toLowerCase())) {
        _searchResult.add(userDetail);
      }
      setState(() {});
    }
  }
}
