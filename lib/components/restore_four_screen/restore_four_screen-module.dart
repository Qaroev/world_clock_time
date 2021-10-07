import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/restore_four_screen/restore_four_screen-component.dart';

class RestoreFourScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RestoreFourScreen()),
  ];
}
