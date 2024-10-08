import 'package:fpdart/fpdart.dart' show ReaderTaskEither;
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

ReaderTaskEither<GroupRepository, GroupFailure, Iterable<Group>>
    getGroupsTask() {
  return ReaderTaskEither(
    (repo) => repo.getGroups().run(),
  );
}

ReaderTaskEither<GroupRepository, GroupFailure, Group> getGroupByIdTask(
    String id) {
  return ReaderTaskEither(
    (repo) => repo.getGroupById(id).run(),
  );
}
