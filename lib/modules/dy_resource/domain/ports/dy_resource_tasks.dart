import 'package:fpdart/fpdart.dart' show ReaderTaskEither;
import 'package:tuda_flow/tuda_flow.dart'
    show DyResource, DyResourceFailure, DyResourceRepository;

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

ReaderTaskEither<DyResourceRepository, DyResourceFailure, String>
    createResourceTask({
  required String structureCode,
  required Map<String, dynamic> fields,
}) {
  return ReaderTaskEither(
    (repository) => repository
        .createResource(
          structureCode: structureCode,
          fields: fields,
        )
        .run(),
  );
}

ReaderTaskEither<DyResourceRepository, DyResourceFailure, String>
    updateResourceTask({
  required String structureCode,
  required Map<String, dynamic> fields,
  required String id,
}) {
  return ReaderTaskEither(
    (repository) => repository
        .updateResource(
          id: id,
          structureCode: structureCode,
          fields: fields,
        )
        .run(),
  );
}

ReaderTaskEither<DyResourceRepository, DyResourceFailure, String>
    deleteResourceByIdTask(
  String id,
) {
  return ReaderTaskEither(
    (repository) => repository.deleteResourceById(id).run(),
  );
}
