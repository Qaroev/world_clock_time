import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/add_screen/add_screen-module.dart';
import 'package:worldclocktime/components/home/home-module.dart';
import 'package:worldclocktime/components/restore_screen/restore_screen-module.dart';
import 'package:worldclocktime/components/restore_two_screen/restore_two_screen-module.dart';
import 'package:worldclocktime/components/save_screen/save_screen-module.dart';
import 'package:worldclocktime/components/settings_screen/settings_screen-module.dart';
import 'package:worldclocktime/components/splash_screen/splash_screen-module.dart';

import 'components/restore_four_screen/restore_four_screen-module.dart';
import 'components/restore_three_screen/restore_three_screen-module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

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
    ModuleRoute(
      '/restore-three',
      module: RestoreThreeModule(),
    ),
    ModuleRoute(
      '/restore-four',
      module: RestoreFourScreenModule(),
    ),
    ModuleRoute(
      '/home',
      module: HomeModule(),
    ),
    ModuleRoute(
      '/add-screen',
      module: AddScreenModule(),
    ),
    ModuleRoute(
      '/save-screen',
      module: SaveScreenModule(),
    ),
    ModuleRoute(
      '/settings-screen',
      module: SettingsScreenModule(),
    ),
  ];
}
