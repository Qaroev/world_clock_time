import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:worldclocktime/models/main-model.dart';
import 'package:worldclocktime/services/token/token_service.dart';

part 'main-service.g.dart';

@Injectable()
class MainService extends Disposable {
  TokenService _tokenService = TokenService();
  List<Themes> themes = [];
  MainModel? mainModel = new MainModel();

  Future<dynamic> getListTimeZone() async {
    http.Response res =
        await http.get(Uri.parse('http://worldtimeapi.org/api/timezone'));
    if (res.statusCode == 200 || res.statusCode == 400) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  Future<dynamic> getTimeZone(String country) async {
    http.Response res = await http
        .get(Uri.parse('http://worldtimeapi.org/api/timezone/$country'));
    if (res.statusCode == 200 || res.statusCode == 400) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  saveData() {
    _tokenService.getData('controlStudentsData').then((value) {
      if (value != null) {
        final List<MainModel> _mainItem = MainModel.decode(value);
        _mainItem.add(mainModel!);
        final String __mainItemData = MainModel.encode(_mainItem);
        _tokenService.saveData("controlStudentsData", __mainItemData);
        print('saveshud');
      } else {
        final String __mainItemData = MainModel.encode([mainModel!]);
        _tokenService.saveData("controlStudentsData", __mainItemData);
        print('saveshud');
      }
    });
  }

  @override
  void dispose() {}
}
