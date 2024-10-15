import 'package:tuda_flow/tuda_flow.dart'
    show DyField, DyFieldDataType, DyResourceStructure;

DyResourceStructure practiceTestSubmissionStructure() => DyResourceStructure(
      code: 'practice_test_submission',
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
    );
