import 'package:tuda_flow/tuda_flow.dart'
    show
        DyField,
        DyFieldDataType,
        DyGroupMethod,
        DyGroupStructure,
        DyMethodType;

final forumStructure = DyGroupStructure(
  code: 'forum',
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
    createPostFromForumMethod,
  ],
);

final createPostFromForumMethod = DyGroupMethod(
  code: 'create_post_from_forum',
  type: DyMethodType.create,
  targetStructureCode: 'post',
);
