// To parse this JSON data, do
//
//     final brandList = brandListFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'get_brands.g.dart';

BrandList brandListFromJson(String str) => BrandList.fromJson(json.decode(str));

String brandListToJson(BrandList data) => json.encode(data.toJson());

@JsonSerializable()
class BrandList {
  BrandList({
    required this.data,
  });

  List<GetBrandList> data;

  factory BrandList.fromJson(Map<String, dynamic> json) => BrandList(
        data: List<GetBrandList>.from(
            json["data"].map((x) => GetBrandList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class GetBrandList {
  GetBrandList({
    required this.id,
    required this.thumbImg,
  });

  int id;
  String thumbImg;

  factory GetBrandList.fromJson(Map<String, dynamic> json) => GetBrandList(
        id: json["id"],
        thumbImg: json["thumbImg"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "thumbImg": thumbImg,
      };
}
