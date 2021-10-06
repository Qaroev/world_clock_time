import 'package:flutter_modular/flutter_modular.dart';
import 'package:worldclocktime/components/splash_screen/splash_screen-component.dart';

class SplashScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashScreen()),
  ];
}
