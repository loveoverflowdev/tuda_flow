import 'package:fpdart/src/task_either.dart';
import 'package:tuda_flow/tuda_flow.dart';

final class DyGroupRepositoryImpl implements DyGroupRepository {
  @override
  TaskEither<DyGroupFailure, void> createGroup({
    required String structureCode,
    Map<String, dynamic>? dyFields,
  }) {
    // TODO: implement createGroup
    throw UnimplementedError();
  }

  @override
  TaskEither<DyGroupFailure, void> deleteGroupById(String id) {
    // TODO: implement deleteGroupById
    throw UnimplementedError();
  }

  @override
  TaskEither<DyGroupFailure, DyGroup> getGroupById(String id) {
    // TODO: implement getGroupById
    throw UnimplementedError();
  }

  @override
  TaskEither<DyGroupFailure, Iterable<DyGroup>> getGroups() {
    // TODO: implement getGroups
    throw UnimplementedError();
  }

  @override
  TaskEither<DyGroupFailure, void> updateGroup({
    required String id,
    required String structureCode,
    Map<String, dynamic>? dyFields,
  }) {
    // TODO: implement updateGroup
    throw UnimplementedError();
  }
}
