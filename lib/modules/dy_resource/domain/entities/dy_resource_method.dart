class DyResourceMethod {
  final String code;
  final DyResourceMethodType type;
  final DyResourceMethodHolderType holderType;
  final String targetStructureCode;

  DyResourceMethod({
    required this.code,
    required this.type,
    required this.holderType,
    required this.targetStructureCode,
  });

  @override
  String toString() {
    return 'DyResourceMethod(code: $code, type: $type, holderType: $holderType, targetStructureCode: $targetStructureCode)';
  }
}

enum DyResourceMethodType {
  create('CREATE'),
  read('READ'),
  readList('READ_LIST'),
  update('UPDATE'),
  delete('DELETE'),

  ///
  workflow('WORKFLOW');

  final String raw;
  const DyResourceMethodType(this.raw);

  static DyResourceMethodType fromRaw(String value) {
    switch (value) {
      case 'CREATE':
        return DyResourceMethodType.create;
      case 'READ':
        return DyResourceMethodType.read;
      case 'READ_LIST':
        return DyResourceMethodType.readList;
      case 'UPDATE':
        return DyResourceMethodType.update;
      case 'DELETE':
        return DyResourceMethodType.delete;
      case 'WORKFLOW':
        return DyResourceMethodType.workflow;
      default:
        throw Exception('Invalid DyResourceMethodType: $value');
    }
  }

  @override
  String toString() {
    return raw;
  }
}

enum DyResourceMethodHolderType {
  element('ELEMENT'),
  collection('COLLECTION');

  final String raw;
  const DyResourceMethodHolderType(this.raw);

  static DyResourceMethodHolderType fromRaw(String value) {
    switch (value) {
      case 'ELEMENT':
        return DyResourceMethodHolderType.element;
      case 'COLLECTION':
        return DyResourceMethodHolderType.collection;
      default:
        throw Exception('Invalid DyResourceMethodHolderType: $value');
    }
  }

  @override
  String toString() {
    return raw;
  }
}
