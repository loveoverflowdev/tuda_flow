import 'package:postgres/postgres.dart';
import 'package:tuda_flow/tuda_flow.dart';

extension DyResourceDataSerialization on DyResource {
  static DyResource fromJson(
    Map json, {
    required DyResourceStructure structure,
  }) {
    final dyFields = <String, dynamic>{};
    for (final field in structure.dyFields) {
      dyFields[field.code] = json[field.code];
    }
    return DyResource(
      id: json['id'] as String,
      dyFields: dyFields,
      createdAt: json['created_at'] is DateTime
          ? json['created_at'] as DateTime
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] is DateTime
          ? json['updated_at'] as DateTime
          : DateTime.parse(json['updated_at'] as String),
    );
  }

  static DyResource fromResultRow(
    ResultRow row, {
    required DyResourceStructure structure,
  }) {
    return DyResourceDataSerialization.fromJson(
      row.toColumnMap(),
      structure: structure,
    );
  }
}

extension DyResourceStructureDataSerialization on DyResourceStructure {
  static DyResourceStructure fromJson(Map json) {
    return DyResourceStructure(
      code: json['code'] as String,
      dyFields: (json['dy_fields'] as Iterable? ?? []).map(
        (field) => DyResourceField(
          code: field['code'] as String,
          type: DyResourceFieldDataType.values.firstWhere(
            (element) => element.raw == field['type'],
          ),
        ),
      ),
      methods: (json['methods'] as Iterable? ?? []).map(
        (method) => DyResourceMethod(
          code: method['code'] as String,
          type: DyResourceMethodType.fromRaw(method['type'] as String),
          holderType: DyResourceMethodHolderType.fromRaw(
            method['holder_type'] as String,
          ),
          targetStructureCode: method['target_structure_code'] as String,
        ),
      ),
    );
  }

  static DyResourceStructure fromResultRow(ResultRow row) {
    return DyResourceStructureDataSerialization.fromJson(row.toColumnMap());
  }
}

// part 'dy_resource_result.g.dart';

// @JsonSerializable(
//   createToJson: false,
// )
// final class DyResourceResult {
//   factory DyResourceResult.fromJson(Map<String, dynamic> json) =>
//       _$DyResourceResultFromJson(json);
//   const DyResourceResult({
//     required this.id,
//     required this.structureCode,
//     this.dyFields = const {},
//     required this.createdAt,
//     required this.updatedAt,
//     required this.creatorId,
//   });

//   @JsonKey(name: 'id')
//   final String id;

//   @JsonKey(name: 'structure_code')
//   final String structureCode;

//   @JsonKey(name: 'dyFields')
//   final Map<String, dynamic> dyFields;

//   @JsonKey(name: 'creator_id')
//   final String? creatorId;

//   @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
//   final DateTime createdAt;

//   @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
//   final DateTime updatedAt;

//   DyResource toEntity() {
//     return DyResource(
//       id: id,
//       structureCode: structureCode,
//       dyFields: dyFields,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//     );
//   }

//   /// Use it because posgreql pre parse datetime and so does json_serializable
//   static DateTime _dateTimeFromJson(DateTime dateTime) => dateTime;
// }
