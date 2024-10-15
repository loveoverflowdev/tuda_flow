import 'package:json_annotation/json_annotation.dart';
import 'package:tuda_flow/tuda_flow.dart';

part 'dy_resource_result.g.dart';

@JsonSerializable(
  createToJson: false,
)
final class DyResourceResult {
  factory DyResourceResult.fromJson(Map<String, dynamic> json) =>
      _$DyResourceResultFromJson(json);
  const DyResourceResult({
    required this.id,
    required this.structureCode,
    this.fields = const {},
    required this.createdAt,
    required this.updatedAt,
    required this.creatorId,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'structure_code')
  final String structureCode;

  @JsonKey(name: 'fields')
  final Map<String, dynamic> fields;

  @JsonKey(name: 'creator_id')
  final String? creatorId;

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

  /// Use it because posgreql pre parse datetime and so does json_serializable
  static DateTime _dateTimeFromJson(DateTime dateTime) => dateTime;
}
