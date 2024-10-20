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
  required Map<String, dynamic> dyFields,
}) {
  return ReaderTaskEither(
    (repo) => repo
        .createGroup(
          structureCode: structureCode,
          dyFields: dyFields,
        )
        .run(),
  );
}

ReaderTaskEither<DyGroupRepository, DyGroupFailure, void> updateGroupTask({
  required String id,
  required String structureCode,
  required Map<String, dynamic> dyFields,
}) {
  return ReaderTaskEither(
    (repo) => repo
        .updateGroup(
          structureCode: structureCode,
          id: id,
          dyFields: dyFields,
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
