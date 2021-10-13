import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/save_screen/save_screen-componen.dart';

class SaveScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SaveScreen()),
  ];
}
