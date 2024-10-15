import 'package:postgres/postgres.dart';

final class PostgresClient {
  late Future<Connection> _connection;

  PostgresClient() {
    _connect();
  }

  void _connect() {
    _connection = Connection.open(
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
    var conn = await _connection;

    if (!conn.isOpen) {
      _connect();
      conn = await _connection;
    }
    return conn.execute(
      query,
      parameters: parameters,
      ignoreRows: ignoreRows,
      queryMode: queryMode,
      timeout: timeout,
    );
  }
}
