import 'package:postgres/postgres.dart';

final class PostgresClient {
  Connection? _connection;

  PostgresClient() {
    _connect();
  }

  Future<void> _connect() async {
    _connection = await Connection.open(
      Endpoint(
        host: 'localhost',
        port: 5432,
        username: 'postgres',
        password: 'root',
        database: 'tuda_flow',
      ),
      settings: const ConnectionSettings(sslMode: SslMode.disable),
    );
  }

  Future<Result> execute(
    Object query, {
    Object? parameters,
    bool ignoreRows = false,
    QueryMode? queryMode,
    Duration? timeout,
  }) async {
    if (_connection == null) {
      throw Exception('Connection is not initialized');
    }
    if (_connection?.isOpen == true) {
      await _connect();
    }
    return _connection!.execute(
      query,
      parameters: parameters,
      ignoreRows: ignoreRows,
      queryMode: queryMode,
      timeout: timeout,
    );
  }
}
