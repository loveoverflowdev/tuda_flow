import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:postgres/postgres.dart';
import 'package:tuda_flow/tuda_flow.dart';

// abstract final class DyGroupDbQuery {
//   /// Query to select all groups from the dy_groups table
//   static Future<Iterable<DyGroupResult>> selectGroups(
//     PostgresClient client,
//   ) {
//     return client.execute('''
// SELECT
//     id,
//     structure_code,
//     dyFields,
//     created_at,
//     updated_at
// FROM dy_groups;
// ''').then(
//       (results) => results.map(
//         (e) => DyGroupResult.fromJson(e.toColumnMap()),
//       ),
//     );
//   }

//   /// Query to select  group from the dy_groups table based on [id]
//   static Future<DyGroupResult?> selectGroupById(
//     PostgresClient client, {
//     required String id,
//   }) {
//     return client.execute(
//       '''
// SELECT
//     id,
//     structure_code,
//     dyFields,
//     created_at,
//     updated_at
// FROM dy_groups
// WHERE id = @id;
// ''',
//       parameters: {
//         'id':
//             id, // Passing the id as a substitution value to avoid SQL injection
//       },
//     ).then(
//       (results) {
//         if (results.isNotEmpty) {
//           return DyGroupResult.fromJson(results.first.toColumnMap());
//         } else {
//           return null; // Return null if no group is found
//         }
//       },
//     );
//   }

//   /// Query to create a new group in the dy_groups table
//   static Future<Result> createGroup(
//     PostgresClient client, {
//     required String structureCode,
//     required String? creatorId,
//     required Map<String, dynamic> dyFields,
//   }) {
//     final dyFieldsJson = jsonEncode(dyFields);
//     return client.execute('''
//     INSERT INTO dy_groups (structure_code, dyFields, creator_id, created_at, updated_at)
//     VALUES (
//         '$structureCode',
//         '$dyFieldsJson',
//         '$creatorId',
//         NOW(),
//         NOW()
//     );
// ''');
//   }

//   /// Update group after first selecting it
//   static Future<Result?> updateGroupById(
//     PostgresClient client,
//     String id, {
//     required String structureCode,
//     required Map<String, dynamic> dyFields,
//   }) async {
//     // First, check if the group exists
//     final group = await selectGroupById(client, id: id);

//     if (group != null) {
//       // If the group exists, proceed with the update
//       final dyFieldsJson = jsonEncode(dyFields);
//       return client.execute('''
//         UPDATE dy_groups
//         SET
//           structure_code = @structureCode,
//           dyFields = @dyFields,
//           updated_at = NOW()
//         WHERE id = @id;
//       ''', parameters: {
//         'structureCode': structureCode,
//         'dyFields': dyFieldsJson,
//         'id': id,
//       });
//     } else {
//       return null;
//     }
//   }

//   /// Deletes a group by its ID after first selecting it
//   static Future<Result?> deleteGroupById(
//     PostgresClient client,
//     String id,
//   ) async {
//     // First, check if the group exists
//     final group = await selectGroupById(client, id: id);

//     if (group != null) {
//       // If the group exists, proceed with the deletion
//       return client.execute(
//         '''
//       DELETE FROM dy_groups
//       WHERE id = @id;
//     ''',
//         parameters: {
//           'id': id,
//         },
//       );
//     } else {
//       return null; // Return null if the group doesn't exist
//     }
//   }
// }

enum DyGroupFailureType {
  resourceNotFound,
  invalidPayload,
  sqlExecutionError,
}

// abstract final class DyGroupDbQuery {
//   /// Select all resource
//   static TaskEither<DyResourceFailureType, Iterable<DyResourceResult>>
//       selectGroups(
//     PostgresClient client,
//   ) {
//     return TaskEither.tryCatch(
//       () => client.execute('''
// SELECT 
//     id, 
//     structure_code, 
//     dyFields, 
//     created_at, 
//     updated_at,
//     creator_id
// FROM dy_resources;
// ''').then(
//         (results) => results.map(
//           (e) => DyResourceResult.fromJson(e.toColumnMap()),
//         ),
//       ),
//       (error, stackTrace) {
//         print(error);
//         print(stackTrace);
//         return DyResourceFailureType.sqlExecutionError;
//       },
//     );
//   }

//   /// Select a single resource by its ID
//   static TaskEither<DyResourceFailureType, DyResourceResult> selectResourceById(
//     PostgresClient client,
//     String id,
//   ) {
//     return TaskEither.tryCatch(
//       () async {
//         final result = await client.execute(
//           Sql.named('''
//     SELECT 
//       id, 
//       structure_code, 
//       dyFields, 
//       created_at, 
//       updated_at,
//       creator_id
//     FROM dy_resources
//     WHERE id = @id;
//   '''),
//           parameters: {
//             'id': id,
//           },
//         );

//         if (result.isNotEmpty) {
//           return DyResourceResult.fromJson(result.first.toColumnMap());
//         } else {
//           return null; // Return null if the resource doesn't exist
//         }
//       },
//       (error, stackTrace) {
//         print(error);
//         print(stackTrace);
//         return DyResourceFailureType.sqlExecutionError;
//       },
//     ).flatMap(
//       (resource) => resource == null
//           ? TaskEither.left(DyResourceFailureType.resourceNotFound)
//           : TaskEither.right(resource),
//     );
//   }

//   static TaskEither<DyResourceFailureType, DyResourceResult> createResource(
//     PostgresClient client, {
//     required String structureCode,
//     required String? creatorId,
//     required Map<String, dynamic> dyFields,
//   }) {
//     return TaskEither.tryCatch(
//       () async {
//         final dyFieldsJson = jsonEncode(dyFields);
//         final result = await client.execute(
//           Sql.named('''
//     INSERT INTO dy_resources (structure_code, dyFields, creator_id, created_at, updated_at) 
//     VALUES (
//         @structure_code, 
//         @dyFields,
//         @creator_id,
//         NOW(),  
//         NOW()  
//     ) RETURNING id, structure_code, dyFields, creator_id, created_at, updated_at;
// '''),
//           parameters: {
//             'structure_code': structureCode,
//             'dyFields': dyFieldsJson,
//             'creator_id': null,
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
//   }

//   /// Update resource after first selecting it
//   static TaskEither<DyResourceFailureType, DyResourceResult> updateResourceById(
//     PostgresClient client,
//     String id, {
//     required String structureCode,
//     required Map<String, dynamic> dyFields,
//   }) {
//     return selectResourceById(client, id).flatMap(
//       (dyResource) {
//         final overridedFields = dyResource.dyFields;

//         for (final field in dyFields.entries) {
//           if (dyResource.dyFields.containsKey(field.key)) {
//             overridedFields[field.key] = field.value;
//           } else {
//             return TaskEither.left(
//               DyResourceFailureType.invalidPayload,
//             );
//           }
//         }

//         return TaskEither.tryCatch(
//           () async {
//             final dyFieldsJson = jsonEncode(dyFields);
//             final result = await client.execute(
//               Sql.named('''
//       UPDATE dy_resources
//       SET 
//         structure_code = @structure_code,
//         dyFields = @dyFields,
//         updated_at = NOW()
//       WHERE id = @id RETURNING id, structure_code, dyFields, creator_id, created_at, updated_at;
//     '''),
//               parameters: {
//                 'structure_code': structureCode,
//                 'dyFields': dyFieldsJson,
//                 'id': id,
//               },
//             );

//             return DyResourceResult.fromJson(result.first.toColumnMap());
//           },
//           (error, stackTrace) {
//             print(error);
//             print(stackTrace);
//             return DyResourceFailureType.sqlExecutionError;
//           },
//         );
//       },
//     );
//   }

//   /// Deletes a resource by its ID after first selecting it
//   static TaskEither<DyResourceFailureType, DyResourceResult> deleteResourceById(
//     PostgresClient client,
//     String id,
//   ) {
//     return selectResourceById(client, id).flatMap((dyResource) {
//       return TaskEither.tryCatch(
//         () async {
//           final result = await client.execute(
//             Sql.named(
//               '''
//       DELETE FROM dy_resources
//       WHERE id = @id RETURNING id, structure_code, dyFields, creator_id, created_at, updated_at;
//     ''',
//             ),
//             parameters: {
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
//     });
//   }
// }
