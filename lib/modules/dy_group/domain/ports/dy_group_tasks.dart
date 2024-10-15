import 'package:fpdart/fpdart.dart' show ReaderTaskEither;
import 'package:tuda_flow/tuda_flow.dart';

ReaderTaskEither<DyGroupRepository, DyGroupFailure, Iterable<DyGroup>>
    getGroupsTask() {
  return ReaderTaskEither(
    (repo) => repo.getGroups().run(),
  );
}

ReaderTaskEither<DyGroupRepository, DyGroupFailure, DyGroup> getGroupByIdTask(
    String id) {
  return ReaderTaskEither(
    (repo) => repo.getGroupById(id).run(),
  );
}

ReaderTaskEither<DyGroupRepository, DyGroupFailure, void> createGroupTask({
  required String structureCode,
  required Map<String, dynamic> fields,
}) {
  return ReaderTaskEither(
    (repo) => repo
        .createGroup(
          structureCode: structureCode,
          fields: fields,
        )
        .run(),
  );
}

ReaderTaskEither<DyGroupRepository, DyGroupFailure, void> updateGroupTask({
  required String id,
  required String structureCode,
  required Map<String, dynamic> fields,
}) {
  return ReaderTaskEither(
    (repo) => repo
        .updateGroup(
          structureCode: structureCode,
          id: id,
          fields: fields,
        )
        .run(),
  );
}

ReaderTaskEither<DyGroupRepository, DyGroupFailure, void> deleteGroupIdTask(
  String id,
) {
  return ReaderTaskEither(
    (repo) => repo.deleteGroupById(id).run(),
  );
}
