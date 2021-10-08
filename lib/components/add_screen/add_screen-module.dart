import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/add_screen/add_screen-componen.dart';

class AddScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AddScreen()),
  ];
}
