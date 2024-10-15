class DyResource {
  final String id;
  final String structureCode;
  final Map<String, dynamic>? fields;
  final DateTime createdAt;
  final DateTime updatedAt;

  const DyResource({
    required this.id,
    required this.structureCode,
    this.fields,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  String toString() {
    return 'DyResource(id: $id, structureCode: $structureCode, fields: $fields, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
