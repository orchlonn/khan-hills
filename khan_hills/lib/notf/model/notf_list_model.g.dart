// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notf_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationList _$NotificationListFromJson(Map<String, dynamic> json) =>
    NotificationList(
      data: (json['data'] as List<dynamic>)
          .map((e) => NotfListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationListToJson(NotificationList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
