import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuda_flow/tuda_flow.dart' show BaseFailure;

part 'dy_resource_failure.freezed.dart';

@freezed
class DyResourceFailure with _$DyResourceFailure implements BaseFailure {
  factory DyResourceFailure.unauthorized({
    required String message,
  }) = _Unauthorized;

  factory DyResourceFailure.internalServer({
    required String message,
  }) = _InternalServer;

  factory DyResourceFailure.undefined({
    required String message,
  }) = _Undefined;

  factory DyResourceFailure.notFound({
    required String message,
  }) = _NotFound;

  factory DyResourceFailure.structureNotFound({
    required String message,
  }) = _StructureNotFound;

  factory DyResourceFailure.badRequest({
    required String message,
  }) = _BadRequest;
}
