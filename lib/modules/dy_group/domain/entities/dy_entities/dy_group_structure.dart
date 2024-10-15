import 'package:tuda_flow/common.dart';

class DyGroupStructure {
  final String code;
  final List<DyField> fields;
  final List<DyGroupMethod> methods;

  DyGroupStructure({
    required this.code,
    required this.fields,
    required this.methods,
  });
}
