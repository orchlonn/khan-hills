// To parse this JSON data, do
//
//     final brandDetails = brandDetailsFromJson(jsonString);

import 'dart:convert';

BrandDetails brandDetailsFromJson(String str) =>
    BrandDetails.fromJson(json.decode(str));

String brandDetailsToJson(BrandDetails data) => json.encode(data.toJson());

class BrandDetails {
  BrandDetails({
    required this.data,
  });

  List<Datum> data;

  factory BrandDetails.fromJson(Map<String, dynamic> json) => BrandDetails(
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
    required this.body,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4,
    required this.desc1,
    required this.desc2,
    required this.desc3,
  });

  int id;
  String title;
  String body;
  String img1;
  String img2;
  String img3;
  String img4;
  String desc1;
  String desc2;
  String desc3;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        img1: json["img1"],
        img2: json["img2"],
        img3: json["img3"],
        img4: json["img4"],
        desc1: json["desc1"],
        desc2: json["desc2"],
        desc3: json["desc3"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "img1": img1,
        "img2": img2,
        "img3": img3,
        "img4": img4,
        "desc1": desc1,
        "desc2": desc2,
        "desc3": desc3,
      };
}
