import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/restore_two_screen/restore_two_screen-component.dart';

class RestoreTwoScreenScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RestoreTwoScreen()),
  ];
}
