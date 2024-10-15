import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

final class DyResourceRepositoryImpl implements DyResourceRepository {
  final PostgresClient dbClient;

  DyResourceRepositoryImpl({
    required this.dbClient,
  });

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
    // TODO: implement getResourceById
    throw UnimplementedError();
  }

  @override
  TaskEither<DyResourceFailure, Iterable<DyResource>> getResources() {
    return TaskEither.tryCatch(
      () => DyResourceDbQuery.selectResources(dbClient).then(
        (results) => results.map((e) => e.toEntity()),
      ),
      (failure, stackTrace) => DyResourceFailure.internalServer(
        message: failure.toString(),
      ),
    );
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
}
