import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/app_modul.dart';
import 'package:worldclocktime/app_widget.dart';
void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}



