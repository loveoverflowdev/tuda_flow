import 'package:tuda_flow/tuda_flow.dart'
    show DyResourceField, DyResourceMethod;

class DyResourceStructure {
  final String code;
  final Iterable<DyResourceField> fields;
  final Iterable<DyResourceMethod>? methods;

  const DyResourceStructure({
    required this.code,
    required this.fields,
    this.methods,
  });

  @override
  String toString() {
    return 'DyResourceStructure(code: $code, fields: $fields, methods: $methods)';
  }
}
