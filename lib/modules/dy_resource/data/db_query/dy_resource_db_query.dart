import 'package:fpdart/fpdart.dart';
import 'package:postgres/postgres.dart';
import 'package:tuda_flow/tuda_flow.dart';

enum DyResourceFailureType {
  resourceNotFound,
  invalidPayload,
  sqlExecutionError,
  resourceStructureNotFound,
}

abstract final class DyResourceDbQuery {
  /// Select all resource
  static TaskEither<DyResourceFailureType, Iterable<DyResource>>
      selectResources(
    PostgresClient client, {
    required String structureCode,
  }) {
    return DyResourceStructureDbQuery.selectStructureByCode(
      client,
      structureCode,
    )
        .mapLeft(
      _mapDyResourceStructureFailureType,
    )
        .flatMap((structure) {
      final fields = [
        ...structure.dyFields.map((e) => e.code),
        ...['id', 'created_at', 'updated_at', 'creator_id'],
      ].join(',');

      return TaskEither.tryCatch(
        () => client
            .execute(
              Sql.named(
                '''
          SELECT 
              $fields
          FROM ${structure.code};
          ''',
              ),
            )
            .then(
              (results) => results.map(
                (row) => DyResourceDataSerialization.fromResultRow(
                  row,
                  structure: structure,
                ),
              ),
            ),
        (error, stackTrace) {
          print(error);
          print(stackTrace);
          return DyResourceFailureType.sqlExecutionError;
        },
      );
    });
  }

  /// Select a single resource by its ID
  static TaskEither<DyResourceFailureType, DyResource> selectResourceById(
    PostgresClient client,
    String id, {
    required String structureCode,
  }) {
    return DyResourceStructureDbQuery.selectStructureByCode(
      client,
      structureCode,
    )
        .mapLeft(
      _mapDyResourceStructureFailureType,
    )
        .flatMap(
      (structure) {
        return TaskEither.tryCatch(
          () async {
            // Abstract by function
            final result = await client.execute(
              Sql.named('''
                SELECT 
                  id, 
                  structure_code, 
                  dyFields, 
                  created_at, 
                  updated_at,
                  creator_id
                FROM dy_resources
                WHERE id = @id;
              '''),
              parameters: {
                'id': id,
              },
            );

            if (result.isNotEmpty) {
              return DyResourceDataSerialization.fromResultRow(
                result.first,
                structure: structure,
              );
            } else {
              return null; // Return null if the resource doesn't exist
            }
          },
          (error, stackTrace) {
            print(error);
            print(stackTrace);
            return DyResourceFailureType.sqlExecutionError;
          },
        ).flatMap(
          (resource) => resource == null
              ? TaskEither.left(DyResourceFailureType.resourceNotFound)
              : TaskEither.right(resource),
        );
      },
    );
  }

  static TaskEither<DyResourceFailureType, DyResource> deleteResourceById(
    PostgresClient client,
    String id, {
    required String structureCode,
  }) {
    throw UnimplementedError();
  }

  static TaskEither<DyResourceFailureType, DyResource> createResource(
    PostgresClient client, {
    required String structureCode,
    required String? creatorId,
    required Map<String, dynamic> dyFields,
  }) {
    return DyResourceStructureDbQuery.selectStructureByCode(
      client,
      structureCode,
    )
        .mapLeft(
      _mapDyResourceStructureFailureType,
    )
        .flatMap((structure) {
      return TaskEither.tryCatch(() {
        final valueCodes = structure.dyFields.map((e) => e.code).join(
              ',',
            );
        final values =
            structure.dyFields.map((e) => "'${dyFields[e.code]}'").join(',');
        final returningCodes = [
          ...structure.dyFields.map((e) => e.code),
          ...['id', 'created_at', 'updated_at']
        ].join(
          ',',
        );

        print('+++++++++++++++++++');
        print('''
            INSERT INTO ${structure.code} ($valueCodes) VALUES ($values)
            RETURNING $returningCodes;
          ''');
        print('+++++++++++++++++++');

        return client
            .execute(
          Sql.named(
            '''
            INSERT INTO ${structure.code} ($valueCodes) VALUES ($values)
            RETURNING $returningCodes;
          ''',
          ),
        )
            .then(
          (results) {
            return DyResourceDataSerialization.fromResultRow(
              results.first,
              structure: structure,
            );
          },
        );
      }, (error, stackTrace) {
        print(error);
        print(stackTrace);
        return DyResourceFailureType.sqlExecutionError;
      });
    });
  }

  static DyResourceFailureType _mapDyResourceStructureFailureType(
      DyResourceStructureFailureType failure) {
    return switch (failure) {
      DyResourceStructureFailureType.resourceStructureNotFound =>
        DyResourceFailureType.resourceStructureNotFound,
      DyResourceStructureFailureType.invalidPayload =>
        DyResourceFailureType.invalidPayload,
      _ => DyResourceFailureType.sqlExecutionError,
    };
  }
}
