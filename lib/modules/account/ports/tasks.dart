import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow/tuda_flow.dart';

ReaderTaskEither<AccountRepository, AccountFailure, Iterable<AccountItem>>
    getAccountItemsTask() {
  return ReaderTaskEither(
    (repo) => repo.getAccountItemsTask().run(),
  );
}

ReaderTaskEither<AccountRepository, AccountFailure, AccountItem>
    getAccountItemByIdTask(String id) {
  return ReaderTaskEither(
    (repo) => repo.getAccountItemByIdTask(id).run(),
  );
}

ReaderTaskEither<AccountRepository, AccountFailure, Iterable<AccountBrief>>
    getAccountBriefsTask() {
  return ReaderTaskEither(
    (repo) => repo.getAccountBriefsTask().run(),
  );
}

ReaderTaskEither<AccountRepository, AccountFailure, AccountBrief>
    getAccountBriefByIdTask(String id) {
  return ReaderTaskEither(
    (repo) => repo.getAccountBriefByIdTask(id).run(),
  );
}

ReaderTaskEither<AccountRepository, AccountFailure, Iterable<Account>>
    getAccountsTask() {
  return ReaderTaskEither(
    (repo) => repo.getAccounts().run(),
  );
}

ReaderTaskEither<AccountRepository, AccountFailure, Account> getAccountByIdTask(
    String id) {
  return ReaderTaskEither(
    (repo) => repo.getAccountById(id).run(),
  );
}
