class DyResource {
  final String id;
  final Map<String, dynamic>? dyFields;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? creatorId;

  const DyResource({
    required this.id,
    this.dyFields,
    required this.createdAt,
    required this.updatedAt,
    this.creatorId,
  });

  @override
  String toString() {
    return 'DyResource(id: $id, dyFields: $dyFields, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
