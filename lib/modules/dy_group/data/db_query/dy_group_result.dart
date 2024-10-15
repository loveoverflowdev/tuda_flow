import 'package:json_annotation/json_annotation.dart';

part 'dy_group_result.g.dart';

@JsonSerializable()
final class DyGroupResult {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'structure_code')
  final String structureCode;

  @JsonKey(name: 'fields')
  final Map<String, dynamic> fields;

  @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
  final DateTime createdAt;

  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromJson)
  final DateTime updatedAt;

  DyGroupResult({
    required this.id,
    required this.structureCode,
    required this.fields,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DyGroupResult.fromJson(Map<String, dynamic> json) =>
      _$DyGroupResultFromJson(json);

  /// Use it because posgreql pre parse datetime and so does json_serializable
  static DateTime _dateTimeFromJson(DateTime dateTime) => dateTime;
}
