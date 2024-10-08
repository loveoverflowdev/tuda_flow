abstract class DyField {
  final String code;
  final DyFieldDataType type;

  DyField({
    required this.code,
    required this.type,
  });
}

enum DyFieldDataType {
  shortText,
  double,
  int,
  paragraph,
  datetime,
  userRef,
  dyResourceRef,
  multiUserRef,
  multiDyResourceRef,
}
