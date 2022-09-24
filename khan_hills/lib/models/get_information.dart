// To parse this JSON data, do
//
//     final informationModel = informationModelFromJson(jsonString);

import 'dart:convert';

InformationModel informationModelFromJson(String str) =>
    InformationModel.fromJson(json.decode(str));

String informationModelToJson(InformationModel data) =>
    json.encode(data.toJson());

class InformationModel {
  InformationModel({
    required this.data,
  });

  List<Datum> data;

  factory InformationModel.fromJson(Map<String, dynamic> json) =>
      InformationModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.body,
  });

  int id;
  String body;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "body": body,
      };
}
