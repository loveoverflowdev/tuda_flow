import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:tuda_flow/tuda_flow.dart';

Future<Response> onRequest(RequestContext context, String structureCode) {
  return switch (context.request.method) {
    HttpMethod.get => _get(context, structureCode),
    HttpMethod.post => _post(context, structureCode),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed))
  };
}

Future<Response> _get(RequestContext context, String structureCode) {
  return getResourcesTask(
    structureCode: structureCode,
  ).match(
    _failureToResponse,
    (dyResources) {
      return responseData(
        dyResources.map(DyResourceResponse.fromEntity).toList(),
      );
    },
  ).run(context.read<DyResourceRepository>());
}

Future<Response> _post(RequestContext context, String structureCode) async {
  final dyFields = await context.request.json();
  if (dyFields is! Map<String, dynamic>) {
    return responseFailure(
      statusCode: HttpStatus.badRequest,
      message: 'Body must be provided as JSON',
    );
  }
  return createResourceTask(
    structureCode: structureCode,
    dyFields: dyFields,
  ).match(
    _failureToResponse,
    (resource) {
      return responseData(
        DyResourceResponse(
          id: resource.id,
          dyFields: resource.dyFields,
          createdAt: resource.createdAt,
          updatedAt: resource.updatedAt,
          creatorId: resource.creatorId,
        ),
      );
    },
  ).run(context.read<DyResourceRepository>());
}

Response _failureToResponse(DyResourceFailure failure) {
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
    structureNotFound: (message) => responseFailure(
      statusCode: HttpStatus.notFound,
      message: message,
    ),
  );
}
