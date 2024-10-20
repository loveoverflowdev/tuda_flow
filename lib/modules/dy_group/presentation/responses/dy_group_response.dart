import 'package:json_annotation/json_annotation.dart';

part 'dy_group_response.g.dart';

@JsonSerializable()
class DyGroupResponse {
  final String id;
  final String structureCode;
  final Map<String, dynamic> dyFields;
  final DateTime createdAt;
  final DateTime updatedAt;

  DyGroupResponse({
    required this.id,
    required this.structureCode,
    required this.dyFields,
    required this.createdAt,
    required this.updatedAt,
  });
}
