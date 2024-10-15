import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

abstract interface class DyResourceStructureRepository {
  TaskEither<DyStructureFailure, Iterable<DyResourceStructure>> getStructures();

  TaskEither<DyStructureFailure, DyResourceStructure> getStructureByCode(
    String code,
  );
}
