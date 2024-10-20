class DyGroup {
  final String id;
  final String structureCode;
  final Map<String, dynamic> dyFields;
  final DateTime createdAt;
  final DateTime updatedAt;

  DyGroup({
    required this.id,
    required this.structureCode,
    required this.dyFields,
    required this.createdAt,
    required this.updatedAt,
  });
}
