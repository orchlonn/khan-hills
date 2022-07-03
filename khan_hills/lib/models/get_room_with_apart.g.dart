// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_room_with_apart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomNumbersWithApartList _$RoomNumbersWithApartListFromJson(
        Map<String, dynamic> json) =>
    RoomNumbersWithApartList(
      data: (json['data'] as List<dynamic>)
          .map((e) => GetRooms.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomNumbersWithApartListToJson(
        RoomNumbersWithApartList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
