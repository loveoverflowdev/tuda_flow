class DyResourceMethod {
  final String code;
  final DyMethodType type;
  final DyMethodHolderType holderType;
  final String targetStructureCode;

  DyResourceMethod({
    required this.code,
    required this.type,
    required this.holderType,
    required this.targetStructureCode,
  });
}

class DyGroupMethod {
  final String code;
  final DyMethodType type;
  final String targetStructureCode;

  DyGroupMethod({
    required this.code,
    required this.type,
    required this.targetStructureCode,
  });
}

enum DyMethodType {
  create,
  read,
  readList,
  update,
  delete,

  ///
  workflow,
}

enum DyMethodHolderType {
  element,
  collection,
}
