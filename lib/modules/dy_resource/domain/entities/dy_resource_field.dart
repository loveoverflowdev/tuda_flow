class DyResourceField {
  final String code;
  final DyResourceFieldDataType type;

  DyResourceField({
    required this.code,
    required this.type,
  });

  @override
  String toString() {
    return 'DyResourceField(code: $code, type: $type)';
  }
}

enum DyResourceFieldDataType {
  shortText('SHORT_TEXT'),
  double('DOUBLE'),
  int('INT'),
  markdown('MARKDOWN'),
  datetime('DATETIME'),
  url('URL'),
  accountRef('ACCOUNT_REF'),
  dyGroupResourceRef('DY_GROUP_RESOURCE_REF'),
  dyResourceRef('DY_RESOURCE_REF'),
  multiAccountRef('MULTI_ACCOUNT_REF'),
  multiDyResourceRef('MULTI_DY_RESOURCE_REF');

  final String raw;
  const DyResourceFieldDataType(this.raw);

  @override
  String toString() {
    return raw;
  }
}
