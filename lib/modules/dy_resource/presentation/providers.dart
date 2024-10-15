import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart' as db;
import 'package:tuda_flow/common/postgres_client.dart';
import 'package:tuda_flow/modules/dy_resource/data/repositories/dy_resource_repository_impl.dart';
import 'package:tuda_flow/tuda_flow.dart'
    show
        DyResourceRepository,
        DyResourceStructureRepository,
        DyResourceStructureRepositoryImpl;

/// Provider a [DyResourceStructureRepository] to the current [RequestContext].
Middleware dyResourceStructureRepositoryProvider() {
  return (handler) {
    return handler.use(
      provider<DyResourceStructureRepository>(
        (_) => DyResourceStructureRepositoryImpl(),
      ),
    );
  };
}

/// Provider a [DyResourceStructureRepository] to the current [RequestContext].
Middleware dyResourceRepositoryProvider(
  PostgresClient dbClient,
) {
  return (handler) {
    return handler.use(
      provider<DyResourceRepository>(
        (_) => DyResourceRepositoryImpl(
          dbClient: dbClient,
        ),
      ),
    );
  };
}
