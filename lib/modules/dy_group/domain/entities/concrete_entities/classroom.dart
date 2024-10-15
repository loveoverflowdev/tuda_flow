import 'package:tuda_flow/tuda_flow.dart'
    show
        DyField,
        DyFieldDataType,
        DyGroupMethod,
        DyGroupStructure,
        DyMethodType;

final classroomStructure = DyGroupStructure(
  code: 'classroom',
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
  methods: [
    createPostFromClassroomMethod,
  ],
);

final createPostFromClassroomMethod = DyGroupMethod(
  code: 'create_post_from_classroom',
  type: DyMethodType.create,
  targetStructureCode: 'post',
);
