// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dy_resource_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DyResourceResult _$DyResourceResultFromJson(Map<String, dynamic> json) =>
    DyResourceResult(
      id: json['id'] as String,
      structureCode: json['structure_code'] as String,
      fields: json['fields'] as Map<String, dynamic>?,
      createdAt:
          DyResourceResult._dateTimeFromJson(json['created_at'] as DateTime),
      updatedAt:
          DyResourceResult._dateTimeFromJson(json['updated_at'] as DateTime),
    );
