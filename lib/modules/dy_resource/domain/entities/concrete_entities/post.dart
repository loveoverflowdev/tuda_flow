import 'package:tuda_flow/tuda_flow.dart'
    show
        DyField,
        DyFieldDataType,
        DyMethodHolderType,
        DyMethodType,
        DyResourceMethod,
        DyResourceStructure;

DyResourceStructure postStructure() => DyResourceStructure(
      code: 'post',
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
        readCommentListFromPostMethod(),
      ],
    );

DyResourceMethod readCommentListFromPostMethod() => DyResourceMethod(
      code: 'read_comment_from_event',
      type: DyMethodType.readList,
      holderType: DyMethodHolderType.element,
      targetStructureCode: 'comment',
    );
