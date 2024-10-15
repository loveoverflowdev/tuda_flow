import 'package:fpdart/fpdart.dart';

import 'package:tuda_flow/tuda_flow.dart'
    show
        DyResourceStructure,
        DyResourceStructureRepository,
        DyStructureFailure,
        commentStructure,
        eventStructure,
        postStructure,
        practiceTestStructure,
        practiceTestSubmissionStructure;

final class DyResourceStructureRepositoryImpl
    implements DyResourceStructureRepository {
  DyResourceStructureRepositoryImpl() {
    _structures = [
      commentStructure(),
      eventStructure(),
      postStructure(),
      practiceTestStructure(),
      practiceTestSubmissionStructure()
    ];
  }

  late final List<DyResourceStructure> _structures;

  @override
  TaskEither<DyStructureFailure, DyResourceStructure> getStructureByCode(
    String code,
  ) {
    final int searchedIndex = _structures.indexWhere(
      (e) => e.code == code,
    );
    if (searchedIndex == -1) {
      return TaskEither.left(
        DyStructureFailure.notFound(
          message: 'structure with code "$code" not found',
        ),
      );
    } else {
      return TaskEither.of(_structures[searchedIndex]);
    }
  }

  @override
  TaskEither<DyStructureFailure, Iterable<DyResourceStructure>>
      getStructures() {
    return TaskEither.of(_structures);
  }
}
