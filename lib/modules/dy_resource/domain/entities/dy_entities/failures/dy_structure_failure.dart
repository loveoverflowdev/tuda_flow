import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuda_flow/tuda_flow.dart' show BaseFailure;

part 'dy_structure_failure.freezed.dart';

@freezed
class DyStructureFailure with _$DyStructureFailure implements BaseFailure {
  factory DyStructureFailure.unauthorized({
    required String message,
  }) = _Unauthorized;

  factory DyStructureFailure.internalServer({
    required String message,
  }) = _InternalServer;

  factory DyStructureFailure.undefined({
    required String message,
  }) = _Undefined;

  factory DyStructureFailure.notFound({
    required String message,
  }) = _NotFound;

  factory DyStructureFailure.badRequest({
    required String message,
  }) = _BadRequest;
}
