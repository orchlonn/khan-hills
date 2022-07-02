// To parse this JSON data, do
//
//     final roomNumbers = roomNumbersFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'get_room_numbers.g.dart';

RoomNumbers roomNumbersFromJson(String str) =>
    RoomNumbers.fromJson(json.decode(str));

String roomNumbersToJson(RoomNumbers data) => json.encode(data.toJson());

@JsonSerializable()
class RoomNumbers {
  RoomNumbers({
    required this.data,
  });

  List<GetRooms> data;

  factory RoomNumbers.fromJson(Map<String, dynamic> json) => RoomNumbers(
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
