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
      dyFields: entity.dyFields,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  final String id;
  final Map<String, dynamic>? dyFields;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? creatorId;

  const DyResourceResponse({
    required this.id,
    this.dyFields,
    this.createdAt,
    this.updatedAt,
    this.creatorId,
  });

  factory DyResourceResponse.fromJson(Map<String, dynamic> json) =>
      _$DyResourceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DyResourceResponseToJson(this);
}
