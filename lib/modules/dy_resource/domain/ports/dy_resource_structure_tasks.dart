import 'package:fpdart/fpdart.dart' show ReaderTaskEither;
import 'package:tuda_flow/tuda_flow.dart'
    show DyResourceStructureRepository, DyStructureFailure, DyResourceStructure;

ReaderTaskEither<DyResourceStructureRepository, DyStructureFailure,
    DyResourceStructure> getResourceStructureByCodeTask(String code) {
  return ReaderTaskEither(
    (repository) => repository.getStructureByCode(code).run(),
  );
}

ReaderTaskEither<DyResourceStructureRepository, DyStructureFailure,
    Iterable<DyResourceStructure>> getResourceStructuresTask() {
  return ReaderTaskEither(
    (repository) => repository.getStructures().run(),
  );
}
