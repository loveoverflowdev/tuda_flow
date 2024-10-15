import 'package:tuda_flow/tuda_flow.dart'
    show
        DyField,
        DyFieldDataType,
        DyMethodHolderType,
        DyMethodType,
        DyResourceMethod,
        DyResourceStructure;

DyResourceStructure practiceTestStructure() => DyResourceStructure(
      code: 'practice_test',
      fields: [
        DyField(
          code: 'content',
          type: DyFieldDataType.markdown,
        ),
        DyField(
          code: 'dy_group_ref',
          type: DyFieldDataType.dyGroupResourceRef,
        ),
      ],
      methods: [
        readCommentListFromPracticeTestMethod(),
      ],
    );

DyResourceMethod readCommentListFromPracticeTestMethod() => DyResourceMethod(
      code: 'read_comment_from_practice_test',
      type: DyMethodType.readList,
      holderType: DyMethodHolderType.element,
      targetStructureCode: 'comment',
    );
