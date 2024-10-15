import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuda_flow/tuda_flow.dart' show DyResource;

part 'dy_resource_response.g.dart';

@JsonSerializable()
class DyResourceResponse {
  factory DyResourceResponse.fromEntity(
    DyResource entity,
  ) {
    return DyResourceResponse(
      id: entity.id,
      structureCode: entity.structureCode,
      fields: entity.fields,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  final String id;
  final String? structureCode;
  final Map<String, dynamic>? fields;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const DyResourceResponse({
    required this.id,
    this.structureCode,
    this.fields,
    this.createdAt,
    this.updatedAt,
  });

  factory DyResourceResponse.fromJson(Map<String, dynamic> json) =>
      _$DyResourceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DyResourceResponseToJson(this);
}
