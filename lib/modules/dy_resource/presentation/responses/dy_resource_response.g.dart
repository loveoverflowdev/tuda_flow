// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dy_resource_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DyResourceResponse _$DyResourceResponseFromJson(Map<String, dynamic> json) =>
    DyResourceResponse(
      id: json['id'] as String,
      structureCode: json['structureCode'] as String?,
      fields: json['fields'] as Map<String, dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DyResourceResponseToJson(DyResourceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'structureCode': instance.structureCode,
      'fields': instance.fields,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
