import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

abstract interface class UserRepository {
  TaskEither<UserFailure, User> getUserById(String id);
  TaskEither<UserFailure, Iterable<User>> getUsers();

  TaskEither<UserFailure, Iterable<UserBrief>> getUserBriefsTask();
  TaskEither<UserFailure, UserBrief> getUserBriefByIdTask(String id);

  TaskEither<UserFailure, UserItem> getUserItemByIdTask(String id);
  TaskEither<UserFailure, Iterable<UserItem>> getUserItemsTask();
}
