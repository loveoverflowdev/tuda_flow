class DyGroupMethod {
  final String code;
  final DyGroupMethodType type;
  final String targetStructureCode;

  DyGroupMethod({
    required this.code,
    required this.type,
    required this.targetStructureCode,
  });
}

enum DyGroupMethodType {
  createResource('CREATE'),
  update('UPDATE'),
  delete('DELETE'),
  leave('LEAVE'),

  ///
  workflow('WORKFLOW');

  final String raw;
  const DyGroupMethodType(this.raw);
}
