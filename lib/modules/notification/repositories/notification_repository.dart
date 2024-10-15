import 'package:fpdart/fpdart.dart' show TaskEither;
import 'package:tuda_flow/tuda_flow.dart'
    show Notification, NotificationFailure;

abstract interface class NotificationRepository {
  TaskEither<NotificationFailure, Iterable<Notification>> getNotifications();

  TaskEither<NotificationFailure, Notification> getNotificationById(String id);
}
