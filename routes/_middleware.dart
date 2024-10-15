import 'package:dart_frog/dart_frog.dart';
import 'package:tuda_flow/tuda_flow.dart';

Handler middleware(Handler handler) {
  final dbClient = PostgresClient();
  return handler
      .use(
        requestLogger(),
      )
      .use(
        dyResourceStructureRepositoryProvider(),
      )
      .use(
        dyResourceRepositoryProvider(dbClient),
      );
}
