import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuda_flow/tuda_flow.dart';

part 'dy_resource_structure_response.g.dart';

@JsonSerializable()
class DyResourceStructureResponse {
  final String code;
  final List<DyFieldResponse> fields;
  final List<DyResourceMethodResponse>? methods;

  const DyResourceStructureResponse({
    required this.code,
    required this.fields,
    this.methods,
  });

  factory DyResourceStructureResponse.fromEntity(
    DyResourceStructure entity,
  ) {
    return DyResourceStructureResponse(
      code: entity.code,
      fields: [
        for (final field in entity.fields)
          DyFieldResponse(
            code: field.code,
            type: switch (field.type) {
              DyFieldDataType.shortText => DyFieldDataTypeResponse.shortText,
              DyFieldDataType.double => DyFieldDataTypeResponse.double,
              DyFieldDataType.int => DyFieldDataTypeResponse.int,
              DyFieldDataType.markdown => DyFieldDataTypeResponse.markdown,
              DyFieldDataType.datetime => DyFieldDataTypeResponse.datetime,
              DyFieldDataType.url => DyFieldDataTypeResponse.url,
              DyFieldDataType.userRef => DyFieldDataTypeResponse.userRef,
              DyFieldDataType.dyGroupResourceRef =>
                DyFieldDataTypeResponse.dyGroupResourceRef,
              DyFieldDataType.dyResourceRef =>
                DyFieldDataTypeResponse.dyResourceRef,
              DyFieldDataType.multiUserRef =>
                DyFieldDataTypeResponse.multiUserRef,
              DyFieldDataType.multiDyResourceRef =>
                DyFieldDataTypeResponse.multiDyResourceRef,
            },
          ),
      ],
      methods: [
        for (final method in entity.methods ?? <DyResourceMethod>[])
          DyResourceMethodResponse(
            code: method.code,
            type: switch (method.type) {
              DyMethodType.create => DyMethodTypeResponse.create,
              DyMethodType.read => DyMethodTypeResponse.read,
              DyMethodType.readList => DyMethodTypeResponse.readList,
              DyMethodType.update => DyMethodTypeResponse.update,
              DyMethodType.delete => DyMethodTypeResponse.delete,
              DyMethodType.workflow => DyMethodTypeResponse.workflow,
            },
            holderType: switch (method.holderType) {
              DyMethodHolderType.element => DyMethodHolderTypeResponse.element,
              DyMethodHolderType.collection =>
                DyMethodHolderTypeResponse.collection,
            },
            targetStructureCode: method.targetStructureCode,
          ),
      ],
    );
  }

  factory DyResourceStructureResponse.fromJson(Map<String, dynamic> json) =>
      _$DyResourceStructureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DyResourceStructureResponseToJson(this);
}

@JsonSerializable()
class DyFieldResponse {
  final String code;
  final DyFieldDataTypeResponse type;

  DyFieldResponse({
    required this.code,
    required this.type,
  });

  factory DyFieldResponse.fromJson(Map<String, dynamic> json) =>
      _$DyFieldResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DyFieldResponseToJson(this);
}

enum DyFieldDataTypeResponse {
  @JsonValue('SHORT_TEXT')
  shortText,

  @JsonValue('DOUBLE')
  double,

  @JsonValue('INT')
  int,

  @JsonValue('MARKDOWN')
  markdown,

  @JsonValue('DATETIME')
  datetime,

  @JsonValue('URL')
  url,

  @JsonValue('USER_REF')
  userRef,

  @JsonValue('DY_GROUP_RESOURCE_REF')
  dyGroupResourceRef,

  @JsonValue('DY_RESOURCE_REF')
  dyResourceRef,

  @JsonValue('MULTI_USER_REF')
  multiUserRef,

  @JsonValue('MULTI_DY_GROUP_RESOURCE_REF')
  multiDyResourceRef,
}

@JsonSerializable()
class DyResourceMethodResponse {
  final String code;
  final DyMethodTypeResponse type;
  final DyMethodHolderTypeResponse holderType;
  final String targetStructureCode;

  const DyResourceMethodResponse({
    required this.code,
    required this.type,
    required this.holderType,
    required this.targetStructureCode,
  });

  factory DyResourceMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$DyResourceMethodResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DyResourceMethodResponseToJson(this);
}

enum DyMethodHolderTypeResponse {
  @JsonValue('ELEMENT')
  element,

  @JsonValue('COLLECTION')
  collection,
}

enum DyMethodTypeResponse {
  @JsonValue('CREATE')
  create,

  @JsonValue('READ')
  read,

  @JsonValue('READ_LIST')
  readList,

  @JsonValue('UPDATE')
  update,

  @JsonValue('DELETE')
  delete,

  @JsonValue('WORKFLOW')
  workflow,
}
