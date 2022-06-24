// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_banner_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBannerList _$GetBannerListFromJson(Map<String, dynamic> json) =>
    GetBannerList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetBannerListToJson(GetBannerList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
