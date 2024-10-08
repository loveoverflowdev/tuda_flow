import 'package:fpdart/fpdart.dart' show TaskEither;
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

abstract interface class GroupRepository {
  TaskEither<GroupFailure, Group> getGroupById(String id);
  TaskEither<GroupFailure, Iterable<Group>> getGroups();
}
