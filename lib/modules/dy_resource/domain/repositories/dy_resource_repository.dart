import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart' show DyResource, DyResourceFailure;

abstract interface class DyResourceRepository {
  TaskEither<DyResourceFailure, Iterable<DyResource>> getResources({
    required String structureCode,
  });

  TaskEither<DyResourceFailure, DyResource> getResourceById(
    String id, {
    required String structureCode,
  });

  TaskEither<DyResourceFailure, DyResource> deleteResourceById(
    String id, {
    required String structureCode,
  });

  TaskEither<DyResourceFailure, DyResource> createResource({
    required String structureCode,
    required Map<String, dynamic> dyFields,
  });

  TaskEither<DyResourceFailure, DyResource> updateResourceById(
    String id, {
    required String structureCode,
    required Map<String, dynamic> dyFields,
  });
}
