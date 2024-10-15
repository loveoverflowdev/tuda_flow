import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart' show DyResource, DyResourceFailure;

abstract interface class DyResourceRepository {
  TaskEither<DyResourceFailure, Iterable<DyResource>> getResources();

  TaskEither<DyResourceFailure, DyResource> getResourceById(String id);

  TaskEither<DyResourceFailure, String> deleteResourceById(String id);

  TaskEither<DyResourceFailure, String> createResource({
    required String structureCode,
    required Map<String, dynamic> fields,
  });

  TaskEither<DyResourceFailure, String> updateResource({
    required String id,
    required String structureCode,
    required Map<String, dynamic> fields,
  });
}
