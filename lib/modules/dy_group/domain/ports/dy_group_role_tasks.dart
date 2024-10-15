import 'package:fpdart/fpdart.dart' show ReaderTaskEither;
import 'package:tuda_flow/tuda_flow.dart';

ReaderTaskEither<DyGroupRoleRepository, DyGroupRoleFailure,
    Iterable<DyGroupRole>> getGroupRolesTask() {
  return ReaderTaskEither(
    (repo) => repo.getGroupRoles().run(),
  );
}

ReaderTaskEither<DyGroupRoleRepository, DyGroupRoleFailure, DyGroupRole>
    getGroupRoleByIdTask(String id) {
  return ReaderTaskEither(
    (repo) => repo.getGroupRoleById(id).run(),
  );
}

ReaderTaskEither<DyGroupRoleRepository, DyGroupRoleFailure, DyGroupRole>
    createGroupRoleTask({
  required String name,
  String? description,
}) {
  return ReaderTaskEither(
    (repo) => repo
        .createGroupRole(
          name: name,
          description: description,
        )
        .run(),
  );
}

ReaderTaskEither<DyGroupRoleRepository, DyGroupRoleFailure, DyGroupRole>
    updateGroupRoleTask({
  required String id,
  required String name,
  String? description,
}) {
  return ReaderTaskEither(
    (repo) => repo
        .updateGroupRole(
          id: id,
          name: name,
          description: description,
        )
        .run(),
  );
}

ReaderTaskEither<DyGroupRoleRepository, DyGroupRoleFailure, void>
    deleteGroupRoleByIdTask(
  String id,
) {
  return ReaderTaskEither(
    (repo) => repo.deleteGroupRoleById(id).run(),
  );
}
