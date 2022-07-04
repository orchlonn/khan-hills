// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelList _$ModelListFromJson(Map<String, dynamic> json) => ModelList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModelListToJson(ModelList instance) => <String, dynamic>{
      'data': instance.data,
    };
