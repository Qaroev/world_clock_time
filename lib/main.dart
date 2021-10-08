import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/app_modul.dart';
import 'package:worldclocktime/app_widget.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>  ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ), // Wrap your app
    ),
  );
}



