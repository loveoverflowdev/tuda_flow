import 'package:tuda_flow/tuda_flow.dart'
    show DyField, DyFieldDataType, DyGroupStructure;

// Defer
final projectStructure = DyGroupStructure(
  code: 'project',
  fields: [
    DyField(
      code: 'name',
      type: DyFieldDataType.shortText,
    ),
    DyField(
      code: 'description',
      type: DyFieldDataType.shortText,
    ),
  ],
  methods: const [],
);
