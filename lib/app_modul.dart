import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/home/home-module.dart';
import 'package:worldclocktime/components/restore_screen/restore_screen-module.dart';
import 'package:worldclocktime/components/restore_two_screen/restore_two_screen-module.dart';
import 'package:worldclocktime/components/splash_screen/splash_screen-module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/',
      module: HomeModule(),
    ),
    ModuleRoute(
      '/splash',
      module: SplashScreenModule(),
    ),
    ModuleRoute(
      '/restore',
      module: RestoreScreenModule(),
    ),
    ModuleRoute(
      '/restore-two',
      module: RestoreTwoScreenScreenModule(),
    ),
  ];
}