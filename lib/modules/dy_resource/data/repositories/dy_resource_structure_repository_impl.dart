import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/modules/dy_resource/data/db_query/dy_resource_structure_db_query.dart';

import 'package:tuda_flow/tuda_flow.dart'
    show
        DyResourceStructure,
        DyResourceStructureDbQuery,
        DyResourceStructureFailure,
        DyResourceStructureRepository,
        PostgresClient;

final class DyResourceStructureRepositoryImpl
    implements DyResourceStructureRepository {
  final PostgresClient _dbClient;

  DyResourceStructureRepositoryImpl({
    required PostgresClient dbClient,
  }) : _dbClient = dbClient;

  late final List<DyResourceStructure> _structures;

  @override
  TaskEither<DyResourceStructureFailure, DyResourceStructure>
      getStructureByCode(
    String code,
  ) {
    return DyResourceStructureDbQuery.selectStructureByCode(
      _dbClient,
      code,
    ).mapLeft(
      _mapQueryFailureType,
    );
  }

  @override
  TaskEither<DyResourceStructureFailure, Iterable<DyResourceStructure>>
      getStructures() {
    return DyResourceStructureDbQuery.selectStructures(
      _dbClient,
    ).mapLeft(
      _mapQueryFailureType,
    );
  }

  @override
  TaskEither<DyResourceStructureFailure, DyResourceStructure> createStructure(
    DyResourceStructure structure,
  ) {
    return DyResourceStructureDbQuery.createStructure(
      _dbClient,
      structure,
    ).mapLeft(
      _mapQueryFailureType,
    );
  }

  @override
  TaskEither<DyResourceStructureFailure, DyResourceStructure>
      replaceResourceStructureByCode(
    String code,
    DyResourceStructure structure,
  ) {
    // TODO: implement replaceResourceStructureByCode
    throw UnimplementedError();
  }

  DyResourceStructureFailure _mapQueryFailureType(
    DyResourceStructureFailureType failureType,
  ) {
    return switch (failureType) {
      DyResourceStructureFailureType.resourceStructureNotFound =>
        DyResourceStructureFailure.notFound(
          message: 'dy structure not found',
        ),
      DyResourceStructureFailureType.invalidPayload =>
        DyResourceStructureFailure.badRequest(
          message: 'invalid payload',
        ),
      DyResourceStructureFailureType.sqlExecutionError =>
        DyResourceStructureFailure.internalServer(
          message: 'sql execution error',
        ),
    };
  }
}
