import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/restore_screen/restore_screen-component.dart';
import 'package:worldclocktime/components/splash_screen/splash_screen-component.dart';

class RestoreScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RestoreScreen()),
  ];
}
