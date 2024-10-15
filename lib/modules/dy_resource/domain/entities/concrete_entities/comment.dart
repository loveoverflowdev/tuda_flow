import 'package:tuda_flow/tuda_flow.dart'
    show
        DyField,
        DyFieldDataType,
        DyMethodHolderType,
        DyMethodType,
        DyResourceMethod,
        DyResourceStructure;

DyResourceStructure commentStructure() => DyResourceStructure(
      code: 'comment',
      fields: [
        DyField(
          code: 'content',
          type: DyFieldDataType.markdown,
        ),
        DyField(
          code: 'dy_resource_ref',
          type: DyFieldDataType.dyResourceRef,
        ),
      ],
      methods: [
        createCommentMethod(),
      ],
    );

DyResourceMethod createCommentMethod() => DyResourceMethod(
      code: 'create_comment',
      type: DyMethodType.create,
      holderType: DyMethodHolderType.collection,
      targetStructureCode: 'comment',
    );
