import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

abstract interface class AccountRepository {
  TaskEither<AccountFailure, Account> getAccountById(String id);
  TaskEither<AccountFailure, Iterable<Account>> getAccounts();

  TaskEither<AccountFailure, Iterable<AccountBrief>> getAccountBriefsTask();
  TaskEither<AccountFailure, AccountBrief> getAccountBriefByIdTask(String id);

  TaskEither<AccountFailure, AccountItem> getAccountItemByIdTask(String id);
  TaskEither<AccountFailure, Iterable<AccountItem>> getAccountItemsTask();
}
