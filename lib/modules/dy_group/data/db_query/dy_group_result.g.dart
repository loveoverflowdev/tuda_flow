// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dy_group_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DyGroupResult _$DyGroupResultFromJson(Map<String, dynamic> json) =>
    DyGroupResult(
      id: json['id'] as String,
      structureCode: json['structure_code'] as String,
      fields: json['fields'] as Map<String, dynamic>,
      createdAt:
          DyGroupResult._dateTimeFromJson(json['created_at'] as DateTime),
      updatedAt:
          DyGroupResult._dateTimeFromJson(json['updated_at'] as DateTime),
    );

Map<String, dynamic> _$DyGroupResultToJson(DyGroupResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'structure_code': instance.structureCode,
      'fields': instance.fields,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
