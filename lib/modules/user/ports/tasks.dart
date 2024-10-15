import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

ReaderTaskEither<UserRepository, UserFailure, Iterable<UserItem>>
    getUserItemsTask() {
  return ReaderTaskEither(
    (repo) => repo.getUserItemsTask().run(),
  );
}

ReaderTaskEither<UserRepository, UserFailure, UserItem> getUserItemByIdTask(
    String id) {
  return ReaderTaskEither(
    (repo) => repo.getUserItemByIdTask(id).run(),
  );
}

ReaderTaskEither<UserRepository, UserFailure, Iterable<UserBrief>>
    getUserBriefsTask() {
  return ReaderTaskEither(
    (repo) => repo.getUserBriefsTask().run(),
  );
}

ReaderTaskEither<UserRepository, UserFailure, UserBrief> getUserBriefByIdTask(
    String id) {
  return ReaderTaskEither(
    (repo) => repo.getUserBriefByIdTask(id).run(),
  );
}

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
