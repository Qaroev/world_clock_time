import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/services/main-service.dart';

class SaveScreen extends StatefulWidget {
  @override
  _SaveScreenState createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  TextEditingController _controller = new TextEditingController();

  MainService _mainService = Modular.get();
  int indexItem = -1;

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
                        '${_mainService.mainModel!.name ?? ''}',
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
                            title: TextFormField(
                              controller: _controller,
                              decoration: new InputDecoration(
                                  hintText: 'Card’s name',
                                  border: InputBorder.none),
                              onChanged: (cardName) => setState(() =>
                                  _mainService.mainModel!.cardName = cardName),
                            ),
                          ))),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFFEB5757';
                          setState(() => indexItem = 1);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFFEB5757),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 1
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFFF2994A';
                          setState(() => indexItem = 2);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2994A),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 2
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFF6FCF97';
                          setState(() => indexItem = 3);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFF6FCF97),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 3
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFFF2C94C';
                          setState(() => indexItem = 4);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2C94C),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 4
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFF2F80ED';
                          setState(() => indexItem = 5);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFF2F80ED),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 5
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFF56CCF2';
                          setState(() => indexItem = 6);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFF56CCF2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 6
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFF9B51E0';
                          setState(() => indexItem = 7);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFF9B51E0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 7
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFF219653';
                          setState(() => indexItem = 8);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFF219653),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 8
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _mainService.mainModel!.color = '0xFFBB6BD9';
                          setState(() => indexItem = 9);
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xFFBB6BD9),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            indexItem == 9
                                ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: GestureDetector(
                  onTap: _mainService.mainModel!.cardName != null &&
                          _controller.text != ''
                      ? () {
                          _mainService.saveData();
                          Modular.to.pushNamed('/home');
                        }
                      : null,
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _mainService.mainModel!.cardName != null &&
                              _controller.text != ''
                          ? Color(0xFF7494F6)
                          : Color.fromRGBO(116, 148, 246, 0.3),
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
