import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

ReaderTaskEither<DyGroupStructureRepository, DyGroupStructureFailure,
    DyGroupStructure> getGroupStructureByCodeTask(String code) {
  return ReaderTaskEither(
    (repo) => repo.getStructureByCode(code).run(),
  );
}

ReaderTaskEither<DyGroupStructureRepository, DyGroupStructureFailure,
    Iterable<DyGroupStructure>> getGroupStructuresTask() {
  return ReaderTaskEither(
    (repo) => repo.getStructures().run(),
  );
}
