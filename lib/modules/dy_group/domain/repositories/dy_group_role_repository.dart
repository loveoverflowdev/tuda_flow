import 'package:fpdart/fpdart.dart' show TaskEither;
import 'package:tuda_flow/tuda_flow.dart';

abstract interface class DyGroupRoleRepository {
  TaskEither<DyGroupRoleFailure, DyGroupRole> createGroupRole({
    required String name,
    String? description,
  });
  TaskEither<DyGroupRoleFailure, DyGroupRole> updateGroupRole({
    required String id,
    String? name,
    String? description,
  });
  TaskEither<DyGroupRoleFailure, void> deleteGroupRoleById(String id);
  TaskEither<DyGroupRoleFailure, DyGroupRole> getGroupRoleById(String id);
  TaskEither<DyGroupRoleFailure, Iterable<DyGroupRole>> getGroupRoles();
}
