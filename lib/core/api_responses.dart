import 'package:dart_frog/dart_frog.dart';

Response responseFailure({
  required int statusCode,
  required String message,
}) {
  return Response.json(
    statusCode: statusCode,
    body: {
      'error': {
        'message': message,
        'status': statusCode,
      },
    },
  );
}

Response responseData(Object data) {
  return Response.json(
    body: {
      'data': data,
    },
  );
}
