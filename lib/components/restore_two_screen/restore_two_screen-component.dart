import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RestoreTwoScreen extends StatefulWidget {
  @override
  RestoreTwoScreenState createState() => new RestoreTwoScreenState();
}

class RestoreTwoScreenState extends State<RestoreTwoScreen> {
  bool isFlag = false;

  @override
  dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  open() {
    RateMyApp rateMyApp = RateMyApp(
      preferencesPrefix: 'rateMyApp_',
      minDays: 7,
      minLaunches: 10,
      remindDays: 7,
      remindLaunches: 10,
      googlePlayIdentifier: 'fr.skyost.example',
      appStoreIdentifier: '1491556149',
    );

    rateMyApp.init().then((_) {
//      rateMyApp.showRateDialog(
//        context,
//        title: 'Rate the app',
//        // The dialog title.
//        message: 'Tap a star to rate. You can also leave a comment ',
//        // The dialog message.
//        rateButton: 'RATE',
//        // The dialog "rate" button text.
//        noButton: 'NO THANKS',
//        // The dialog "no" button text.
//        laterButton: 'MAYBE LATER',
//        // The dialog "later" button text.
//        listener: (button) {
//          // The button click listener (useful if you want to cancel the click event).
//          switch (button) {
//            case RateMyAppDialogButton.rate:
//              print('Clicked on "Rate".');
//              break;
//            case RateMyAppDialogButton.later:
//              print('Clicked on "Later".');
//              break;
//            case RateMyAppDialogButton.no:
//              print('Clicked on "No".');
//              break;
//          }
//
//          return true; // Return false if you want to cancel the click event.
//        },
//        ignoreNativeDialog: Platform.isAndroid,
//        // Set to false if you want to show the Apple's native app rating dialog on iOS or Google's native app rating dialog (depends on the current Platform).
//        dialogStyle: const DialogStyle(),
//        // Custom dialog styles.
//        onDismissed: () => rateMyApp.callEvent(RateMyAppEventType
//            .laterButtonPressed), // Called when the user dismissed the dialog (either by taping outside or by pressing the "back" button).
//        // contentBuilder: (context, defaultContent) => content, // This one allows you to change the default dialog content.
//        // actionsBuilder: (context) => [], // This one allows you to use your own buttons.
//      );

      // Or if you prefer to show a star rating bar (powered by `flutter_rating_bar`) :

      rateMyApp.showStarRateDialog(
        context,
        title: 'Rate the app',
        // The dialog title.
        message: 'Tap a star to rate. You can also leave a comment ',
        // The dialog message.
        // contentBuilder: (context, defaultContent) => content, // This one allows you to change the default dialog content.
        actionsBuilder: (context, stars) {
          // Triggered when the user updates the star rating.
          return [
            // Return a list of actions (that will be shown at the bottom of the dialog).
            FlatButton(
              child: Text('OK'),
              onPressed: () async {
//                  print('Thanks for the ' +
//                      (stars == null ? '0' : stars.round().toString()) +
//                      ' star(s) !');
//                  // You can handle the result as you want (for instance if the user puts 1 star then open your contact page, if he puts more then open the store page, etc...).
//                  // This allows to mimic the behavior of the default "Rate" button. See "Advanced > Broadcasting events" for more information :
//                  await rateMyApp
//                      .callEvent(RateMyAppEventType.rateButtonPressed);
//                  Navigator.pop<RateMyAppDialogButton>(
//                      context, RateMyAppDialogButton.rate);
                Modular.to.pop();
              },
            ),
          ];
        },
        ignoreNativeDialog: Platform.isAndroid,
        // Set to false if you want to show the Apple's native app rating dialog on iOS or Google's native app rating dialog (depends on the current Platform).
        dialogStyle: const DialogStyle(
          // Custom dialog styles.
          titleAlign: TextAlign.center,
          messageAlign: TextAlign.center,
          messagePadding: EdgeInsets.only(bottom: 20),
        ),
        starRatingOptions: const StarRatingOptions(),
        // Custom star bar rating options.
        onDismissed: () => rateMyApp.callEvent(RateMyAppEventType
            .laterButtonPressed), // Called when the user dismissed the dialog (either by taping outside or by pressing the "back" button).
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 0),
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
                          Image.asset('assets/person.png'),
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
                          Image.asset('assets/person2.png'),
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
                        child: Text(
                          'The compact design allows me to see time zones for all the countries I work with',
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
                  height: 70,
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
                GestureDetector(
                  onTap: () {
                    if (!isFlag) {
                      open();
                      setState(() {
                        isFlag = true;
                      });
                    } else {
                       Modular.to.pushNamed('/restore-three');
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
