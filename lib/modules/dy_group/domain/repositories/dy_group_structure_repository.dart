import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart'
    show DyGroupStructure, DyGroupStructureFailure;

abstract interface class DyGroupStructureRepository {
  TaskEither<DyGroupStructureFailure, Iterable<DyGroupStructure>>
      getStructures();

  TaskEither<DyGroupStructureFailure, DyGroupStructure> getStructureByCode(
    String code,
  );
}
