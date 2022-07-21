// To parse this JSON data, do
//
//     final notificationList = notificationListFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'notf_list_model.g.dart';

NotificationList notificationListFromJson(String str) =>
    NotificationList.fromJson(json.decode(str));

String notificationListToJson(NotificationList data) =>
    json.encode(data.toJson());

@JsonSerializable()
class NotificationList {
  NotificationList({
    required this.data,
  });

  List<NotfListData> data;

  factory NotificationList.fromJson(Map<String, dynamic> json) =>
      NotificationList(
        data: List<NotfListData>.from(
            json["data"].map((x) => NotfListData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class NotfListData {
  NotfListData({
    required this.id,
    required this.title,
    required this.body,
    this.headline,
    this.mainImg,
    this.thumbImg,
    required this.createdDate,
  });

  int id;
  String title;
  String body;
  String? headline;
  String? mainImg;
  String? thumbImg;
  String createdDate;

  factory NotfListData.fromJson(Map<String, dynamic> json) => NotfListData(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        headline: json["headline"],
        mainImg: json["mainImg"],
        thumbImg: json["thumbImg"],
        createdDate: json["createdDate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "headline": headline,
        "mainImg": mainImg,
        "thumbImg": thumbImg,
        "createdDate": createdDate,
      };
}
