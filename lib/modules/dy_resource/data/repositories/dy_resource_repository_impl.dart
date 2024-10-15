import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

final class DyResourceRepositoryImpl implements DyResourceRepository {
  final PostgresClient _dbClient;

  DyResourceRepositoryImpl({
    required PostgresClient dbClient,
  }) : _dbClient = dbClient;

  @override
  TaskEither<DyResourceFailure, String> createResource({
    required String structureCode,
    required Map<String, dynamic> fields,
  }) {
    // TODO: implement createResource
    throw UnimplementedError();
  }

  @override
  TaskEither<DyResourceFailure, String> deleteResourceById(String id) {
    // TODO: implement deleteResourceById
    throw UnimplementedError();
  }

  @override
  TaskEither<DyResourceFailure, DyResource> getResourceById(String id) {
    return DyResourceDbQuery.selectResourceById(_dbClient, id)
        .map(
          (result) => result.toEntity(),
        )
        .mapLeft(_mapQueryFailure);
  }

  @override
  TaskEither<DyResourceFailure, Iterable<DyResource>> getResources() {
    return DyResourceDbQuery.selectResources(_dbClient)
        .map(
          (results) => results.map(
            (result) => result.toEntity(),
          ),
        )
        .mapLeft(_mapQueryFailure);
  }

  @override
  TaskEither<DyResourceFailure, String> updateResource({
    required String id,
    required String structureCode,
    required Map<String, dynamic> fields,
  }) {
    // TODO: implement updateResource
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
      };
}
