// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dy_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DyGroupResponse _$DyGroupResponseFromJson(Map<String, dynamic> json) =>
    DyGroupResponse(
      id: json['id'] as String,
      structureCode: json['structureCode'] as String,
      fields: json['fields'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DyGroupResponseToJson(DyGroupResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'structureCode': instance.structureCode,
      'fields': instance.fields,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
