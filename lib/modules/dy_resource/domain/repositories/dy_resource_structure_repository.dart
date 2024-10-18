import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

abstract interface class DyResourceStructureRepository {
  TaskEither<DyResourceStructureFailure, Iterable<DyResourceStructure>>
      getStructures();

  TaskEither<DyResourceStructureFailure, DyResourceStructure>
      getStructureByCode(
    String code,
  );

  TaskEither<DyResourceStructureFailure, DyResourceStructure> createStructure(
    DyResourceStructure structure,
  );

  TaskEither<DyResourceStructureFailure, DyResourceStructure>
      replaceResourceStructureByCode(
    String code,
    DyResourceStructure structure,
  );
}
