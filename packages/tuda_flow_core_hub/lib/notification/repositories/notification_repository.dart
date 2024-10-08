import 'package:fpdart/fpdart.dart' show TaskEither;
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart'
    show Notification, NotificationFailure;

abstract interface class NotificationRepository {
  TaskEither<NotificationFailure, Iterable<Notification>> getNotifications();

  TaskEither<NotificationFailure, Notification> getNotificationById(String id);
}
