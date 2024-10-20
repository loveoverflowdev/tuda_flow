import 'package:tuda_flow/tuda_flow.dart'
    show DyResourceField, DyResourceMethod;

class DyResourceStructure {
  final String code;
  final Iterable<DyResourceField> dyFields;
  final Iterable<DyResourceMethod>? methods;

  const DyResourceStructure({
    required this.code,
    required this.dyFields,
    this.methods,
  });

  @override
  String toString() {
    return 'DyResourceStructure(code: $code, dyFields: $dyFields, methods: $methods)';
  }
}
