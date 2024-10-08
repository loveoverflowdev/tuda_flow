import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

abstract interface class UserRepository {
  TaskEither<UserFailure, User> getUserById(String id);
  TaskEither<UserFailure, Iterable<User>> getUsers();
}
