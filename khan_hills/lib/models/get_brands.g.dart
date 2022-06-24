// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_brands.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandList _$BrandListFromJson(Map<String, dynamic> json) => BrandList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BrandListToJson(BrandList instance) => <String, dynamic>{
      'data': instance.data,
    };
