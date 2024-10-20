import 'package:fpdart/fpdart.dart' show ReaderTaskEither;
import 'package:tuda_flow/tuda_flow.dart'
    show DyResource, DyResourceFailure, DyResourceRepository;

ReaderTaskEither<DyResourceRepository, DyResourceFailure, DyResource>
    getResourceByIdTask(
  String id, {
  required String structureCode,
}) {
  return ReaderTaskEither(
    (repository) => repository
        .getResourceById(
          id,
          structureCode: structureCode,
        )
        .run(),
  );
}

ReaderTaskEither<DyResourceRepository, DyResourceFailure, Iterable<DyResource>>
    getResourcesTask({
  required String structureCode,
}) {
  return ReaderTaskEither(
    (repository) => repository
        .getResources(
          structureCode: structureCode,
        )
        .run(),
  );
}

ReaderTaskEither<DyResourceRepository, DyResourceFailure, DyResource>
    createResourceTask({
  required String structureCode,
  required Map<String, dynamic> dyFields,
}) {
  return ReaderTaskEither(
    (repository) => repository
        .createResource(
          structureCode: structureCode,
          dyFields: dyFields,
        )
        .run(),
  );
}

ReaderTaskEither<DyResourceRepository, DyResourceFailure, DyResource>
    updateResourceTask({
  required String structureCode,
  required Map<String, dynamic> dyFields,
  required String id,
}) {
  return ReaderTaskEither(
    (repository) => repository
        .updateResourceById(
          id,
          structureCode: structureCode,
          dyFields: dyFields,
        )
        .run(),
  );
}

ReaderTaskEither<DyResourceRepository, DyResourceFailure, DyResource>
    deleteResourceByIdTask(
  String id, {
  required String structureCode,
}) {
  return ReaderTaskEither(
    (repository) => repository
        .deleteResourceById(
          id,
          structureCode: structureCode,
        )
        .run(),
  );
}
