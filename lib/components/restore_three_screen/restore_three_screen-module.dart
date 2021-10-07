import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/restore_three_screen/restore_three_screen-component.dart';

class RestoreThreeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RestoreThreeScreen()),
  ];
}
