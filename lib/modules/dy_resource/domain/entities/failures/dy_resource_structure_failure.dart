import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuda_flow/tuda_flow.dart' show BaseFailure;

part 'dy_resource_structure_failure.freezed.dart';

@freezed
class DyResourceStructureFailure
    with _$DyResourceStructureFailure
    implements BaseFailure {
  factory DyResourceStructureFailure.unauthorized({
    required String message,
  }) = _Unauthorized;

  factory DyResourceStructureFailure.internalServer({
    required String message,
  }) = _InternalServer;

  factory DyResourceStructureFailure.undefined({
    required String message,
  }) = _Undefined;

  factory DyResourceStructureFailure.notFound({
    required String message,
  }) = _NotFound;

  factory DyResourceStructureFailure.badRequest({
    required String message,
  }) = _BadRequest;
}
