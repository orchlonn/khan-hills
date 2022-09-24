import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'apart_detail_model.g.dart';

ApartDetailModel apartDetailModelFromJson(String str) =>
    ApartDetailModel.fromJson(json.decode(str));

String apartDetailModelToJson(ApartDetailModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class ApartDetailModel {
  ApartDetailModel({
    required this.data,
  });

  List<Datum> data;

  factory ApartDetailModel.fromJson(Map<String, dynamic> json) =>
      ApartDetailModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.planImg,
    required this.body,
    required this.video,
    required this.img360,
    required this.room,
  });

  int id;
  String planImg;
  String body;
  String video;
  String img360;
  List<Room> room;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        planImg: json["planImg"],
        body: json["body"],
        video: json["video"],
        img360: json["img360"],
        room: List<Room>.from(json["room"].map((x) => Room.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "planImg": planImg,
        "body": body,
        "video": video,
        "img360": img360,
        "room": List<dynamic>.from(room.map((x) => x.toJson())),
      };
}

class Room {
  Room({
    required this.roomName,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4,
    required this.positionTop,
    required this.positionLeft,
  });

  String roomName;
  String img1;
  String img2;
  String img3;
  String img4;
  String positionTop;
  String positionLeft;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        roomName: json["roomName"],
        img1: json["img1"],
        img2: json["img2"],
        img3: json["img3"],
        img4: json["img4"],
        positionTop: json["positionTop"],
        positionLeft: json["positionLeft"],
      );

  Map<String, dynamic> toJson() => {
        "roomName": roomName,
        "img1": img1,
        "img2": img2,
        "img3": img3,
        "img4": img4,
        "positionTop": positionTop,
        "positionLeft": positionLeft,
      };
}
