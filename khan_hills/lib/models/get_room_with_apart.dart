// To parse this JSON data, do
//
//     final RoomNumbersWithApartList = RoomNumbersWithApartListFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'get_room_with_apart.g.dart';

RoomNumbersWithApartList RoomNumbersWithApartListFromJson(String str) =>
    RoomNumbersWithApartList.fromJson(json.decode(str));

String RoomNumbersWithApartListToJson(RoomNumbersWithApartList data) =>
    json.encode(data.toJson());

@JsonSerializable()
class RoomNumbersWithApartList {
  RoomNumbersWithApartList({
    required this.data,
  });

  List<GetRooms> data;

  factory RoomNumbersWithApartList.fromJson(Map<String, dynamic> json) =>
      RoomNumbersWithApartList(
        data:
            List<GetRooms>.from(json["data"].map((x) => GetRooms.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class GetRooms {
  GetRooms({
    required this.id,
    required this.name,
    required this.aparts,
  });

  int id;
  String name;
  List<Apart> aparts;

  factory GetRooms.fromJson(Map<String, dynamic> json) => GetRooms(
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
