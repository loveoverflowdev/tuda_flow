import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

final class DyResourceRepositoryImpl implements DyResourceRepository {
  final PostgresClient _dbClient;

  DyResourceRepositoryImpl({
    required PostgresClient dbClient,
  }) : _dbClient = dbClient;

  @override
  TaskEither<DyResourceFailure, DyResource> createResource({
    required String structureCode,
    required Map<String, dynamic> dyFields,
  }) {
    return DyResourceDbQuery.createResource(
      _dbClient,
      structureCode: structureCode,
      creatorId: null,
      dyFields: dyFields,
    ).mapLeft(_mapQueryFailure);
  }

  @override
  TaskEither<DyResourceFailure, DyResource> deleteResourceById(
    String id, {
    required String structureCode,
  }) {
    return getResourceById(
      id,
      structureCode: structureCode,
    ).chainFirst(
      (resource) => DyResourceDbQuery.deleteResourceById(
        _dbClient,
        id,
        structureCode: structureCode,
      ).mapLeft(_mapQueryFailure),
    );
  }

  @override
  TaskEither<DyResourceFailure, DyResource> getResourceById(
    String id, {
    required String structureCode,
  }) {
    // TODO: implement updateResource
    throw UnimplementedError();
    // return DyResourceDbQuery.selectResourceById(_dbClient, id)
    //     .map(
    //       (result) => result.toEntity(),
    //     )
    //     .mapLeft(_mapQueryFailure);
  }

  @override
  TaskEither<DyResourceFailure, Iterable<DyResource>> getResources({
    required String structureCode,
  }) {
    return DyResourceDbQuery.selectResources(
      _dbClient,
      structureCode: structureCode,
    ).mapLeft(_mapQueryFailure);
  }

  @override
  TaskEither<DyResourceFailure, DyResource> updateResourceById(
    String id, {
    required String structureCode,
    required Map<String, dynamic> dyFields,
  }) {
    // TODO: implement updateResourceById
    throw UnimplementedError();
  }

  DyResourceFailure _mapQueryFailure(DyResourceFailureType failureType) =>
      switch (failureType) {
        DyResourceFailureType.resourceNotFound => DyResourceFailure.notFound(
            message: 'Resources not found',
          ),
        DyResourceFailureType.invalidPayload => DyResourceFailure.badRequest(
            message: 'Invalid payload',
          ),
        DyResourceFailureType.sqlExecutionError => DyResourceFailure.badRequest(
            message: 'Sql Execution payload',
          ),
        DyResourceFailureType.resourceStructureNotFound =>
          DyResourceFailure.structureNotFound(
            message: 'active resource structure not found',
          )
      };
}
