import 'package:tuda_flow/tuda_flow.dart' show DyField, DyResourceMethod;

class DyResourceStructure {
  final String code;
  final List<DyField> fields;
  final List<DyResourceMethod>? methods;

  const DyResourceStructure({
    required this.code,
    required this.fields,
    this.methods,
  });
}
