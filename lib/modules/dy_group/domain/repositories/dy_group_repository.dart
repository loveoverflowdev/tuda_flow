import 'package:fpdart/fpdart.dart' show TaskEither;
import 'package:tuda_flow/tuda_flow.dart';

abstract interface class DyGroupRepository {
  TaskEither<DyGroupFailure, DyGroup> getGroupById(String id);
  TaskEither<DyGroupFailure, Iterable<DyGroup>> getGroups();
  TaskEither<DyGroupFailure, void> createGroup({
    required String structureCode,
    Map<String, dynamic>? fields,
  });
  TaskEither<DyGroupFailure, void> updateGroup({
    required String id,
    required String structureCode,
    Map<String, dynamic>? fields,
  });
  TaskEither<DyGroupFailure, void> deleteGroupById(String id);
}
