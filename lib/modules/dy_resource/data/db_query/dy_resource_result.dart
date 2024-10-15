import 'package:json_annotation/json_annotation.dart';
import 'package:tuda_flow/tuda_flow.dart';

part 'dy_resource_result.g.dart';

@JsonSerializable(
  createToJson: false,
)
class DyResourceResult {
  const DyResourceResult({
    required this.id,
    required this.structureCode,
    this.fields,
    required this.createdAt,
    required this.updatedAt,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'structure_code')
  final String structureCode;

  @JsonKey(name: 'fields')
  final Map<String, dynamic>? fields;

  @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
  final DateTime createdAt;

  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
  final DateTime updatedAt;

  DyResource toEntity() {
    return DyResource(
      id: id,
      structureCode: structureCode,
      fields: fields,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory DyResourceResult.fromJson(Map<String, dynamic> json) =>
      _$DyResourceResultFromJson(json);

  /// Use it because posgreql pre parse datetime and so does json_serializable
  static DateTime _dateTimeFromJson(DateTime dateTime) => dateTime;
}
