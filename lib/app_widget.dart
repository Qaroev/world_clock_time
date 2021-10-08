import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:worldclocktime/components/restore_four_screen/restore_four_screen-component.dart';
import 'package:worldclocktime/components/restore_screen/restore_screen-component.dart';
import 'package:worldclocktime/components/restore_three_screen/restore_three_screen-component.dart';
import 'package:worldclocktime/components/restore_two_screen/restore_two_screen-component.dart';
import 'package:worldclocktime/components/splash_screen/splash_screen-component.dart';

class AppWidget extends StatefulWidget {
  @override
  AppWidgetState createState() => AppWidgetState();
}

class AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SF Pro Display'),
      builder: (context, widget) {
        widget = ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: Color(0xFFF5F5F5)));
        widget = DevicePreview.appBuilder(context, widget);
        return widget;
      },
      initialRoute: '/splash',
    ).modular();
  }
}
