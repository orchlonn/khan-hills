// To parse this JSON data, do
//
//     final modelList = modelListFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'get_model_list.g.dart';

ModelList modelListFromJson(String str) => ModelList.fromJson(json.decode(str));

String modelListToJson(ModelList data) => json.encode(data.toJson());

@JsonSerializable()
class ModelList {
  ModelList({
    required this.data,
  });

  List<ModelData> data;

  factory ModelList.fromJson(Map<String, dynamic> json) => ModelList(
        data: List<ModelData>.from(
            json["data"].map((x) => ModelData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ModelData {
  ModelData({
    required this.name,
    required this.id,
  });

  String name;
  int id;

  factory ModelData.fromJson(Map<String, dynamic> json) => ModelData(
        name: json["name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
      };
}
