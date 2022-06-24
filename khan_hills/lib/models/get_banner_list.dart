// To parse this JSON data, do
//
//     final getBannerList = getBannerListFromJson(jsonString);
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'get_banner_list.g.dart';

GetBannerList getBannerListFromJson(String str) =>
    GetBannerList.fromJson(json.decode(str));

String getBannerListToJson(GetBannerList data) => json.encode(data.toJson());

@JsonSerializable()
class GetBannerList {
  GetBannerList({
    required this.data,
  });

  List<Datum> data;

  factory GetBannerList.fromJson(Map<String, dynamic> json) => GetBannerList(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.title,
    required this.headline,
    required this.thumbImg,
  });

  int id;
  String title;
  String headline;
  String thumbImg;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        headline: json["headline"],
        thumbImg: json["thumbImg"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "headline": headline,
        "thumbImg": thumbImg,
      };
}
