import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart'
    show BindInject, Disposable, Injectable;
import 'package:shared_preferences/shared_preferences.dart';

part 'token_service.g.dart';

@Injectable()
class TokenService extends Disposable {
  SharedPreferences? _ps;

  Future saveData(String key, String data) async {
    _ps = await SharedPreferences.getInstance();
    await _ps!.setString(key, data);
  }

  Future getData(String key) async {
    _ps = await SharedPreferences.getInstance();
    return _ps!.getString(key);
  }

  Future removeData(String key) async {
    _ps = await SharedPreferences.getInstance();
    await _ps!.remove(key);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
