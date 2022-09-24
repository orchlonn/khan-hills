// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apart_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApartDetailModel _$ApartDetailModelFromJson(Map<String, dynamic> json) =>
    ApartDetailModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApartDetailModelToJson(ApartDetailModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
