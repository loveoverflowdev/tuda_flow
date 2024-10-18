import 'package:fpdart/fpdart.dart';
import 'package:postgres/postgres.dart';
import 'package:tuda_flow/tuda_flow.dart';

enum DyResourceStructureFailureType {
  resourceStructureNotFound,
  invalidPayload,
  sqlExecutionError,
}

abstract final class DyResourceStructureDbQuery {
  static TaskEither<DyResourceStructureFailureType,
      Iterable<DyResourceStructure>> selectStructures(
    PostgresClient client,
  ) {
    return TaskEither.tryCatch(
      () => client.execute('''
SELECT * FROM select_all_dy_resource_structure();
''').then(
        (results) => (results.firstOrNull?.firstOrNull as Iterable? ?? []).map(
          (e) => DyResourceStructureDataSerialization.fromJson(e as Map),
        ),
      ),
      (error, stackTrace) {
        print(error);
        print(stackTrace);
        return DyResourceStructureFailureType.sqlExecutionError;
      },
    );
  }

  static TaskEither<DyResourceStructureFailureType, DyResourceStructure>
      selectStructureByCode(
    PostgresClient client,
    String code,
  ) {
    return TaskEither.tryCatch(
      () => client.execute(
        Sql.named(
          'SELECT * FROM select_dy_resource_structure_by_code(@code)',
        ),
        parameters: {
          'code': code,
        },
      ).then(
        (results) {
          final result = results.firstOrNull?.firstOrNull;

          return result != null
              ? DyResourceStructureDataSerialization.fromJson(
                  result as Map,
                )
              : null;
        },
      ),
      (error, stackTrace) {
        print(error);
        print(stackTrace);
        return DyResourceStructureFailureType.sqlExecutionError;
      },
    ).flatMap(
      (structure) => structure == null
          ? TaskEither.left(
              DyResourceStructureFailureType.resourceStructureNotFound,
            )
          : TaskEither.right(structure),
    );
  }

  static TaskEither<DyResourceStructureFailureType, DyResourceStructure>
      createStructure(
    PostgresClient client,
    DyResourceStructure structure,
  ) {
    return TaskEither.tryCatch(
      () => client.runRx<Null>(
        (s) async {
          await s.execute(
            Sql.named(
              '''
                INSERT INTO dy_resource_structure (code, created_at, updated_at)
                VALUES 
                (@code, NOW(), NOW());    
              ''',
            ),
            parameters: {
              'code': structure.code,
            },
          );

          for (final field in structure.fields) {
            await s.execute(
              Sql.named(
                '''
                INSERT INTO dy_resource_field (code, type, resource_structure_code, resource_ref_table)
                VALUES 
                (@code, @type, @resource_structure_code, @resource_ref_table);
                ''',
              ),
              parameters: {
                'code': field.code,
                'type': field.type.raw,
                'resource_structure_code': structure.code,
                'resource_ref_table': null,
              },
            );
          }

          // for (final field in structure.methods ?? <DyResourceMethod>[]) {
          //   await s.execute(
          //     Sql.named(
          //       '''
          //       INSERT INTO dy_resource_field (code, type, resource_structure_code, resource_ref_table)
          //       VALUES
          //       (@code, @type, @resource_structure_code, @resource_ref_table);
          //       ''',
          //     ),
          //     parameters: {
          //       'code': field.code,
          //       'type': field.type.raw,
          //       'resource_structure_code': structure.code,
          //       'resource_ref_table': null,
          //     },
          //   );
          // }

          await s.execute(
            Sql.named('CALL create_dy_resource_table(@code);'),
            parameters: {
              'code': structure.code,
            },
          );
        },
      ),
      (error, stackTrace) {
        print(error);
        print(stackTrace);
        return DyResourceStructureFailureType.sqlExecutionError;
      },
    ).flatMap(
      (_) => selectStructureByCode(client, structure.code),
    );
  }

  static TaskEither<DyResourceStructureFailureType, void> deleteStructureByCode(
    PostgresClient client,
    String code,
    DyResourceStructure structure,
  ) {
    return TaskEither.tryCatch(
      () => client.execute(
        Sql.named(
          'CALL delete_dy_resource_structure_by_code(@code)',
        ),
        parameters: {
          'code': code,
        },
      ),
      (error, stackTrace) {
        print(error);
        print(stackTrace);
        return DyResourceStructureFailureType.sqlExecutionError;
      },
    );
  }
}
