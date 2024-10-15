import 'dart:convert';

import 'package:postgres/postgres.dart';
import 'package:tuda_flow/tuda_flow.dart';

abstract final class DyGroupDbQuery {
  /// Query to select all groups from the dy_groups table
  static Future<Iterable<DyGroupResult>> selectGroups(
    PostgresClient client,
  ) {
    return client.execute('''
SELECT 
    id, 
    structure_code, 
    fields, 
    created_at, 
    updated_at 
FROM dy_groups;
''').then(
      (results) => results.map(
        (e) => DyGroupResult.fromJson(e.toColumnMap()),
      ),
    );
  }

  /// Query to select  group from the dy_groups table based on [id]
  static Future<DyGroupResult?> selectGroupById(
    PostgresClient client, {
    required String id,
  }) {
    return client.execute(
      '''
SELECT 
    id, 
    structure_code, 
    fields, 
    created_at, 
    updated_at 
FROM dy_groups
WHERE id = @id;
''',
      parameters: {
        'id':
            id, // Passing the id as a substitution value to avoid SQL injection
      },
    ).then(
      (results) {
        if (results.isNotEmpty) {
          return DyGroupResult.fromJson(results.first.toColumnMap());
        } else {
          return null; // Return null if no group is found
        }
      },
    );
  }

  /// Query to create a new group in the dy_groups table
  static Future<Result> createGroup(
    PostgresClient client, {
    required String structureCode,
    required String? creatorId,
    required Map<String, dynamic> fields,
  }) {
    final fieldsJson = jsonEncode(fields);
    return client.execute('''
    INSERT INTO dy_groups (structure_code, fields, creator_id, created_at, updated_at) 
    VALUES (
        '$structureCode',
        '$fieldsJson',
        '$creatorId',
        NOW(),  
        NOW()  
    );
''');
  }

  /// Update group after first selecting it
  static Future<Result?> updateGroupById(
    PostgresClient client,
    String id, {
    required String structureCode,
    required Map<String, dynamic> fields,
  }) async {
    // First, check if the group exists
    final group = await selectGroupById(client, id: id);

    if (group != null) {
      // If the group exists, proceed with the update
      final fieldsJson = jsonEncode(fields);
      return client.execute('''
        UPDATE dy_groups
        SET 
          structure_code = @structureCode,
          fields = @fields,
          updated_at = NOW()
        WHERE id = @id;
      ''', parameters: {
        'structureCode': structureCode,
        'fields': fieldsJson,
        'id': id,
      });
    } else {
      return null;
    }
  }

  /// Deletes a group by its ID after first selecting it
  static Future<Result?> deleteGroupById(
    PostgresClient client,
    String id,
  ) async {
    // First, check if the group exists
    final group = await selectGroupById(client, id: id);

    if (group != null) {
      // If the group exists, proceed with the deletion
      return client.execute(
        '''
      DELETE FROM dy_groups
      WHERE id = @id;
    ''',
        parameters: {
          'id': id,
        },
      );
    } else {
      return null; // Return null if the group doesn't exist
    }
  }
}
