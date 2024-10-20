import 'package:tuda_flow/tuda_flow.dart';

class DyGroupStructure {
  final String code;
  final List<DyGroupField> dyFields;
  final List<DyGroupMethod> methods;

  DyGroupStructure({
    required this.code,
    required this.dyFields,
    required this.methods,
  });
}
