import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/themes_screen/themes_screen-component.dart';

class ThemesScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ThemesScreen()),
  ];
}
