import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/settings_screen/settings_screen-componen.dart';

class SettingsScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SettingsScreen()),
  ];
}
