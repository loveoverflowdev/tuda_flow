import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

ReaderTaskEither<UserRepository, UserFailure, Iterable<User>> getUsersTask() {
  return ReaderTaskEither(
    (repo) => repo.getUsers().run(),
  );
}

ReaderTaskEither<UserRepository, UserFailure, User> getUserByIdTask(String id) {
  return ReaderTaskEither(
    (repo) => repo.getUserById(id).run(),
  );
}
