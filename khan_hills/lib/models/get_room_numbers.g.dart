// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_room_numbers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomNumbers _$RoomNumbersFromJson(Map<String, dynamic> json) => RoomNumbers(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetRooms.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomNumbersToJson(RoomNumbers instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
