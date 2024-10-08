import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart'
    show DyResource, DyResourceFailure;

abstract interface class DyResourceRepository {
  TaskEither<DyResourceFailure, Iterable<DyResource>> getResources();

  TaskEither<DyResourceFailure, DyResource> getResourceById(String id);
}
