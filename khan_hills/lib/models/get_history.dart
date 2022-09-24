// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

import 'dart:convert';

HistoryModel historyModelFromJson(String str) =>
    HistoryModel.fromJson(json.decode(str));

String historyModelToJson(HistoryModel data) => json.encode(data.toJson());

class HistoryModel {
  HistoryModel({
    required this.data,
  });

  List<Datum> data;

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.name,
    required this.imgUrl,
    required this.id,
  });

  String name;
  String imgUrl;
  int id;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        imgUrl: json["imgUrl"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "imgUrl": imgUrl,
        "id": id,
      };
}
