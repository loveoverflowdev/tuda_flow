import 'package:fpdart/fpdart.dart';
import '../repositories.dart';
import 'package:tuda_flow/tuda_flow.dart'
    show Notification, NotificationFailure;

ReaderTaskEither<NotificationRepository, NotificationFailure,
    Iterable<Notification>> getNotificationsTask() {
  return ReaderTaskEither(
    (repo) => repo.getNotifications().run(),
  );
}

ReaderTaskEither<NotificationRepository, NotificationFailure, Notification>
    getNotificationByIdTask(String id) {
  return ReaderTaskEither(
    (repo) => repo.getNotificationById(id).run(),
  );
}
