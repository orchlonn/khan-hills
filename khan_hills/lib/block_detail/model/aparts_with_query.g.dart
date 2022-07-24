// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aparts_with_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomsWithQuery _$RoomsWithQueryFromJson(Map<String, dynamic> json) =>
    RoomsWithQuery(
      data: (json['data'] as List<dynamic>)
          .map((e) => RoomQueryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomsWithQueryToJson(RoomsWithQuery instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
