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
              DyResourceFieldDataType.shortText =>
                DyFieldDataTypeResponse.shortText,
              DyResourceFieldDataType.double => DyFieldDataTypeResponse.double,
              DyResourceFieldDataType.int => DyFieldDataTypeResponse.int,
              DyResourceFieldDataType.markdown =>
                DyFieldDataTypeResponse.markdown,
              DyResourceFieldDataType.datetime =>
                DyFieldDataTypeResponse.datetime,
              DyResourceFieldDataType.url => DyFieldDataTypeResponse.url,
              DyResourceFieldDataType.accountRef =>
                DyFieldDataTypeResponse.accountRef,
              DyResourceFieldDataType.dyGroupResourceRef =>
                DyFieldDataTypeResponse.dyGroupResourceRef,
              DyResourceFieldDataType.dyResourceRef =>
                DyFieldDataTypeResponse.dyResourceRef,
              DyResourceFieldDataType.multiAccountRef =>
                DyFieldDataTypeResponse.multiAccountRef,
              DyResourceFieldDataType.multiDyResourceRef =>
                DyFieldDataTypeResponse.multiDyResourceRef,
            },
          ),
      ],
      methods: [
        for (final method in entity.methods ?? <DyResourceMethod>[])
          DyResourceMethodResponse(
            code: method.code,
            type: switch (method.type) {
              DyResourceMethodType.create => DyMethodTypeResponse.create,
              DyResourceMethodType.read => DyMethodTypeResponse.read,
              DyResourceMethodType.readList => DyMethodTypeResponse.readList,
              DyResourceMethodType.update => DyMethodTypeResponse.update,
              DyResourceMethodType.delete => DyMethodTypeResponse.delete,
              DyResourceMethodType.workflow => DyMethodTypeResponse.workflow,
            },
            holderType: switch (method.holderType) {
              DyResourceMethodHolderType.element =>
                DyMethodHolderTypeResponse.element,
              DyResourceMethodHolderType.collection =>
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

  @JsonValue('ACCOUNT_REF')
  accountRef,

  @JsonValue('DY_GROUP_RESOURCE_REF')
  dyGroupResourceRef,

  @JsonValue('DY_RESOURCE_REF')
  dyResourceRef,

  @JsonValue('MULTI_ACCOUNT_REF')
  multiAccountRef,

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
