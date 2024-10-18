class DyGroupField {
  final String code;
  final DyGroupFieldDataType type;

  DyGroupField({
    required this.code,
    required this.type,
  });
}

enum DyGroupFieldDataType {
  shortText('SHORT_TEXT'),
  double('DOUBLE'),
  int('INT'),
  markdown('MARKDOWN');

  final String raw;
  const DyGroupFieldDataType(this.raw);
}
