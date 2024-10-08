import 'package:fpdart/fpdart.dart';
import '../repositories.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart'
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
