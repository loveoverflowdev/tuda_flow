abstract class DyResource {
  final String id;
  late final String structureCode;
  late final Map<String, dynamic> fields;
  late final DateTime createdAt;
  late final DateTime updatedAt;

  DyResource({
    required this.id,
    String? structureCode,
    Map<String, dynamic>? fields,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    if (structureCode != null) this.structureCode = structureCode;
    if (fields != null) this.fields = fields;
    if (createdAt != null) this.createdAt = createdAt;
    if (updatedAt != null) this.updatedAt = updatedAt;
  }
}
