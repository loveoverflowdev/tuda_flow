import 'package:fpdart/fpdart.dart' show ReaderTaskEither;
import 'package:tuda_flow/tuda_flow.dart'
    show
        DyResourceStructureRepository,
        DyResourceStructureFailure,
        DyResourceStructure;

ReaderTaskEither<DyResourceStructureRepository, DyResourceStructureFailure,
    DyResourceStructure> getResourceStructureByCodeTask(String code) {
  return ReaderTaskEither(
    (repository) => repository.getStructureByCode(code).run(),
  );
}

ReaderTaskEither<DyResourceStructureRepository, DyResourceStructureFailure,
    Iterable<DyResourceStructure>> getResourceStructuresTask() {
  return ReaderTaskEither(
    (repository) => repository.getStructures().run(),
  );
}
