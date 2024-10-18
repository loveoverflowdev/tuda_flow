import 'package:dart_frog/dart_frog.dart';
import 'package:tuda_flow/tuda_flow.dart';

Handler middleware(Handler handler) {
  final dbClient = PostgresClient.shared;
  return handler
      .use(
        requestLogger(),
      )
      .use(
        dyResourceStructureRepositoryProvider(dbClient),
      )
      .use(
        dyResourceRepositoryProvider(dbClient),
      );
}
