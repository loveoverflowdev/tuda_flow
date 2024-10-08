import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

abstract interface class DyStructureRepository {
  TaskEither<DyStructureFailure, Iterable<DyStructure>> getStructures();

  TaskEither<DyStructureFailure, DyStructure> getStructureById(String id);
}
