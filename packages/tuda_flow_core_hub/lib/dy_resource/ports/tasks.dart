import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

ReaderTaskEither<DyResourceRepository, DyResourceFailure, DyResource>
    getResourceByIdTask(String id) {
  return ReaderTaskEither(
    (repository) => repository.getResourceById(id).run(),
  );
}

ReaderTaskEither<DyResourceRepository, DyResourceFailure, Iterable<DyResource>>
    getResourcesTask() {
  return ReaderTaskEither(
    (repository) => repository.getResources().run(),
  );
}

ReaderTaskEither<DyStructureRepository, DyStructureFailure, DyStructure>
    getStructureByIdTask(String id) {
  return ReaderTaskEither(
    (repository) => repository.getStructureById(id).run(),
  );
}

ReaderTaskEither<DyStructureRepository, DyStructureFailure,
    Iterable<DyStructure>> getStructuresTask() {
  return ReaderTaskEither(
    (repository) => repository.getStructures().run(),
  );
}
