import 'dy_field.dart';

abstract class DyStructure {
  final String code;
  late final List<DyField> fields;

  DyStructure({
    required this.code,
    List<DyField>? fields,
  }) {
    if (fields != null) this.fields = fields;
  }
}
