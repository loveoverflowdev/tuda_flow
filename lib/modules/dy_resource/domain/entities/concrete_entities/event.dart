import 'package:tuda_flow/tuda_flow.dart'
    show
        DyField,
        DyFieldDataType,
        DyMethodHolderType,
        DyMethodType,
        DyResourceMethod,
        DyResourceStructure;

DyResourceStructure eventStructure() => DyResourceStructure(
      code: 'event',
      fields: [
        DyField(
          code: 'content',
          type: DyFieldDataType.markdown,
        ),
        DyField(
          code: 'start_at',
          type: DyFieldDataType.datetime,
        ),
        DyField(
          code: 'end_at',
          type: DyFieldDataType.datetime,
        ),
        DyField(
          code: 'dy_group_ref',
          type: DyFieldDataType.dyGroupResourceRef,
        ),
      ],
      methods: [
        readCommentListFromEventMethod(),
      ],
    );

DyResourceMethod readCommentListFromEventMethod() => DyResourceMethod(
      code: 'read_comment_from_event',
      type: DyMethodType.readList,
      holderType: DyMethodHolderType.element,
      targetStructureCode: 'comment',
    );
