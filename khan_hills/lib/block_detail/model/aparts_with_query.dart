// To parse this JSON data, do
//
//     final roomsWithQuery = roomsWithQueryFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'aparts_with_query.g.dart';

RoomsWithQuery roomsWithQueryFromJson(String str) =>
    RoomsWithQuery.fromJson(json.decode(str));

String roomsWithQueryToJson(RoomsWithQuery data) => json.encode(data.toJson());

@JsonSerializable()
class RoomsWithQuery {
  RoomsWithQuery({
    required this.data,
  });

  List<RoomQueryData> data;

  factory RoomsWithQuery.fromJson(Map<String, dynamic> json) => RoomsWithQuery(
        data: List<RoomQueryData>.from(
            json["data"].map((x) => RoomQueryData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class RoomQueryData {
  RoomQueryData({
    required this.id,
    required this.name,
    required this.aparts,
  });

  int id;
  String name;
  List<Apart> aparts;

  factory RoomQueryData.fromJson(Map<String, dynamic> json) => RoomQueryData(
        id: json["id"],
        name: json["name"],
        aparts: List<Apart>.from(json["aparts"].map((x) => Apart.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "aparts": List<dynamic>.from(aparts.map((x) => x.toJson())),
      };
}

class Apart {
  Apart({
    required this.id,
    required this.thumbImg,
  });

  int id;
  String thumbImg;

  factory Apart.fromJson(Map<String, dynamic> json) => Apart(
        id: json["id"],
        thumbImg: json["thumbImg"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "thumbImg": thumbImg,
      };
}
