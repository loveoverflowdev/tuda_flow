import 'package:tuda_flow/tuda_flow.dart'
    show DyField, DyFieldDataType, DyGroupStructure;

// Defer
final courseStructure = DyGroupStructure(
  code: 'course',
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
  methods: [],
);
