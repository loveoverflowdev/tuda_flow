import 'package:fpdart/fpdart.dart';
import 'package:postgres/postgres.dart';
import 'package:tuda_flow/tuda_flow.dart';

enum DyResourceFailureType {
  resourceNotFound,
  invalidPayload,
  sqlExecutionError,
}

abstract final class DyResourceDbQuery {
  /// Select all resource
  static TaskEither<DyResourceFailureType, Iterable<DyResource>>
      selectResources(
    PostgresClient client,
  ) {
    return TaskEither.tryCatch(
      () => client.execute('''
SELECT 
    id, 
    structure_code, 
    fields, 
    created_at, 
    updated_at,
    creator_id
FROM dy_resources;
''').then(
        (results) => results.map(
          DyResourceDataSerialization.fromResultRow,
        ),
      ),
      (error, stackTrace) {
        print(error);
        print(stackTrace);
        return DyResourceFailureType.sqlExecutionError;
      },
    );
  }

  /// Select a single resource by its ID
  static TaskEither<DyResourceFailureType, DyResource> selectResourceById(
    PostgresClient client,
    String id,
  ) {
    return TaskEither.tryCatch(
      () async {
        // Abstract by function
        final result = await client.execute(
          Sql.named('''
    SELECT 
      id, 
      structure_code, 
      fields, 
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
          return DyResourceDataSerialization.fromResultRow(result.first);
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
  }

//   static TaskEither<DyResourceFailureType, DyResource> createResource(
//     PostgresClient client, {
//     required String structureCode,
//     required String? creatorId,
//     required Map<String, dynamic> fields,
//   }) {
//     return DyResourceStructureDbQuery.selectStructureByCode(
//       client,
//       structureCode,
//     ).map(
//       (structure) {

//       }
//     ).;
//     return TaskEither.tryCatch(
//       () async {
//         final fieldsJson = jsonEncode(fields);
//         final result = await client.execute(
//           Sql.named('''
//     INSERT INTO @table_name (structure_code, fields, creator_id, created_at, updated_at)
//     VALUES (
//         @structure_code,
//         @fields,
//         @creator_id,
//         NOW(),
//         NOW()
//     ) RETURNING id, structure_code, fields, creator_id, created_at, updated_at;
// '''),
//           parameters: {
//             'structure_code': structureCode,
//             'fields': fieldsJson,
//             'creator_id': null,
//           },
//         );
//         return DyResourceDataSerialization.fromResultRow(result.first);
//       },
//       (error, stackTrace) {
//         print(error);
//         print(stackTrace);
//         return DyResourceFailureType.sqlExecutionError;
//       },
//     );
//   }

  /// Update resource after first selecting it
  // static TaskEither<DyResourceFailureType, DyResource> updateResourceById(
  //   PostgresClient client,
  //   String id, {
  //   required String structureCode,
  //   required Map<String, dynamic> fields,
  // }) {
  //   return selectResourceById(client, id).flatMap(
  //     (dyResource) {
  //       final overridedFields = dyResource.fields;

  //       // for (final field in fields.entries) {
  //       //   if (dyResource.fields.containsKey(field.key)) {
  //       //     overridedFields[field.key] = field.value;
  //       //   } else {
  //       //     return TaskEither.left(
  //       //       DyResourceFailureType.invalidPayload,
  //       //     );
  //       //   }
  //       // }

  //       return TaskEither.tryCatch(
  //         () async {
  //           final fieldsJson = jsonEncode(fields);
  //           final result = await client.execute(
  //             Sql.named('''
  //     UPDATE dy_resources
  //     SET
  //       structure_code = @structure_code,
  //       fields = @fields,
  //       updated_at = NOW()
  //     WHERE id = @id RETURNING id, structure_code, fields, creator_id, created_at, updated_at;
  //   '''),
  //             parameters: {
  //               'structure_code': structureCode,
  //               'fields': fieldsJson,
  //               'id': id,
  //             },
  //           );

  //           return DyResourceResult.fromJson(result.first.toColumnMap());
  //         },
  //         (error, stackTrace) {
  //           print(error);
  //           print(stackTrace);
  //           return DyResourceFailureType.sqlExecutionError;
  //         },
  //       );
  //     },
  //   );
  // }

  // /// Deletes a resource by its ID after first selecting it
  // static TaskEither<DyResourceFailureType, DyResourceResult> deleteResourceById(
  //   PostgresClient client,
  //   String id,
  // ) {
  //   return selectResourceById(client, id).flatMap((dyResource) {
  //     return TaskEither.tryCatch(
  //       () async {
  //         final result = await client.execute(
  //           Sql.named(
  //             '''
  //     DELETE FROM dy_resources
  //     WHERE id = @id RETURNING id, structure_code, fields, creator_id, created_at, updated_at;
  //   ''',
  //           ),
  //           parameters: {
  //             'id': id,
  //           },
  //         );
  //         return DyResourceResult.fromJson(result.first.toColumnMap());
  //       },
  //       (error, stackTrace) {
  //         print(error);
  //         print(stackTrace);
  //         return DyResourceFailureType.sqlExecutionError;
  //       },
  //     );
  //   });
  // }
}
