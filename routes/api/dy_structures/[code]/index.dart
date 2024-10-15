import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:tuda_flow/tuda_flow.dart';

Future<Response> onRequest(RequestContext context, String code) async {
  return getResourceStructureByCodeTask(code).match(
    (failure) {
      return failure.when(
        unauthorized: (message) => responseFailure(
          statusCode: HttpStatus.unauthorized,
          message: message,
        ),
        internalServer: (message) => responseFailure(
          statusCode: HttpStatus.internalServerError,
          message: message,
        ),
        undefined: (message) => responseFailure(
          statusCode: HttpStatus.notImplemented,
          message: message,
        ),
        notFound: (message) => responseFailure(
          statusCode: HttpStatus.notFound,
          message: message,
        ),
        badRequest: (message) => responseFailure(
          statusCode: HttpStatus.badRequest,
          message: message,
        ),
      );
    },
    (dyStructure) {
      return responseData(
        DyResourceStructureResponse.fromEntity(dyStructure),
      );
    },
  ).run(
    context.read<DyResourceStructureRepository>(),
  );
}
