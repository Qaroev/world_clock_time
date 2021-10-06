import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/home/home-component.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home/', child: (_, args) => HomeComponent()),
  ];
}
