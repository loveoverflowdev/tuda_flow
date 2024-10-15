// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dy_resource_structure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DyResourceStructureResponse _$DyResourceStructureResponseFromJson(
        Map<String, dynamic> json) =>
    DyResourceStructureResponse(
      code: json['code'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => DyFieldResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      methods: (json['methods'] as List<dynamic>?)
          ?.map((e) =>
              DyResourceMethodResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DyResourceStructureResponseToJson(
        DyResourceStructureResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'fields': instance.fields,
      'methods': instance.methods,
    };

DyFieldResponse _$DyFieldResponseFromJson(Map<String, dynamic> json) =>
    DyFieldResponse(
      code: json['code'] as String,
      type: $enumDecode(_$DyFieldDataTypeResponseEnumMap, json['type']),
    );

Map<String, dynamic> _$DyFieldResponseToJson(DyFieldResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': _$DyFieldDataTypeResponseEnumMap[instance.type]!,
    };

const _$DyFieldDataTypeResponseEnumMap = {
  DyFieldDataTypeResponse.shortText: 'SHORT_TEXT',
  DyFieldDataTypeResponse.double: 'DOUBLE',
  DyFieldDataTypeResponse.int: 'INT',
  DyFieldDataTypeResponse.markdown: 'MARKDOWN',
  DyFieldDataTypeResponse.datetime: 'DATETIME',
  DyFieldDataTypeResponse.url: 'URL',
  DyFieldDataTypeResponse.userRef: 'USER_REF',
  DyFieldDataTypeResponse.dyGroupResourceRef: 'DY_GROUP_RESOURCE_REF',
  DyFieldDataTypeResponse.dyResourceRef: 'DY_RESOURCE_REF',
  DyFieldDataTypeResponse.multiUserRef: 'MULTI_USER_REF',
  DyFieldDataTypeResponse.multiDyResourceRef: 'MULTI_DY_GROUP_RESOURCE_REF',
};

DyResourceMethodResponse _$DyResourceMethodResponseFromJson(
        Map<String, dynamic> json) =>
    DyResourceMethodResponse(
      code: json['code'] as String,
      type: $enumDecode(_$DyMethodTypeResponseEnumMap, json['type']),
      holderType:
          $enumDecode(_$DyMethodHolderTypeResponseEnumMap, json['holderType']),
      targetStructureCode: json['targetStructureCode'] as String,
    );

Map<String, dynamic> _$DyResourceMethodResponseToJson(
        DyResourceMethodResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': _$DyMethodTypeResponseEnumMap[instance.type]!,
      'holderType': _$DyMethodHolderTypeResponseEnumMap[instance.holderType]!,
      'targetStructureCode': instance.targetStructureCode,
    };

const _$DyMethodTypeResponseEnumMap = {
  DyMethodTypeResponse.create: 'CREATE',
  DyMethodTypeResponse.read: 'READ',
  DyMethodTypeResponse.readList: 'READ_LIST',
  DyMethodTypeResponse.update: 'UPDATE',
  DyMethodTypeResponse.delete: 'DELETE',
  DyMethodTypeResponse.workflow: 'WORKFLOW',
};

const _$DyMethodHolderTypeResponseEnumMap = {
  DyMethodHolderTypeResponse.element: 'ELEMENT',
  DyMethodHolderTypeResponse.collection: 'COLLECTION',
};
