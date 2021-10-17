import 'dart:convert';

class MainModel{
  String? name;
  String? cardName;
  String? time;
  String? color;
  
  MainModel({
    this.name,
    this.cardName,
    this.time,
    this.color,
  });

  factory MainModel.fromJson(Map<String, dynamic> json) {
    return MainModel(
      name: json["name"] != null ? json["name"] : "",
      cardName: json["cardName"] != null ? json["cardName"] : "",
      time: json["time"] != null ? json["time"] : "",
      color: json["color"] != null ? json["color"] : 0x0000000,
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'name': name!.trim(),
      'cardName': cardName!.trim(),
      'time': time!.trim(),
      'color': time!,
    };
    return map;
  }

  static Map<String, dynamic> toMap(MainModel? mainModel) => {
    'login': mainModel!.name,
    'cardName': mainModel.cardName,
    'time': mainModel.time,
    'color': mainModel.color,
  };

  static String encode(List<MainModel> mainModel) =>
      json.encode(
        mainModel
            .map<Map<String, dynamic>>((res) => MainModel.toMap(res))
            .toList(),
      );

  static List<MainModel> decode(String loginData) =>
      (json.decode(loginData) as List<dynamic>)
          .map<MainModel>((item) => MainModel.fromJson(item))
          .toList();
}

class Themes{
  String? name;
  int? color;
  int? isCheck;
}