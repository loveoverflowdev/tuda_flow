import 'dart:convert';

import 'package:postgres/postgres.dart';
import 'package:tuda_flow/common/postgres_client.dart';
import 'package:tuda_flow/tuda_flow.dart';

abstract final class DyResourceDbQuery {
  static Future<Iterable<DyResourceResult>> selectResources(
    PostgresClient client,
  ) {
    return client.execute('''
SELECT 
    id, 
    structure_code, 
    fields, 
    created_at, 
    updated_at 
FROM dy_resources;
''').then(
      (results) => results.map(
        (e) => DyResourceResult.fromJson(e.toColumnMap()),
      ),
    );
  }

  static Future<Result> createResource(
    PostgresClient client, {
    required String structureCode,
    required String? creatorId,
    required Map<String, dynamic> fields,
  }) {
    final fieldsJson = jsonEncode(fields);
    return client.execute('''
    INSERT INTO dy_resources (structure_code, fields, creator_id, created_at, updated_at) 
    VALUES (
        'post', 
        '$fieldsJson',
        '$creatorId',
        NOW(),  
        NOW()  
    );
''');
  }
}
