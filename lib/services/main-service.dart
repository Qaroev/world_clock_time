import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;

part 'main-service.g.dart';

@Injectable()
class MainService extends Disposable {
  Future<dynamic> getListTimeZone() async {
    http.Response  res = await http.get(Uri.parse('http://worldtimeapi.org/api/timezone'));
    if (res.statusCode == 200 || res.statusCode == 400) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  @override
  void dispose() {}
}
