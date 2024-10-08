import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart'
    show NotificationEntity, NotificationType;

/// Represents a notification message in the system.
///
/// A notification is created when an action occurs in the system,
/// and it is sent to the users (notifiers) who should be informed about it.
class Notification {
  /// Creates a new `Notification`.
  ///
  /// - [actorId] is the ID of the user who performed the action.
  /// - [notifierIds] is the list of users who will receive the notification.
  /// - [entity] is the domain entity associated with the notification.
  /// - [type] is the type of the notification (new assignment, comment, ...)
  const Notification({
    required this.actorId,
    required this.notifierIds,
    required this.entity,
    required this.type,
  });

  /// The ID of the actor who initiated the action.
  ///
  /// This could be the ID of a user (e.g., a teacher or a student)
  /// who triggered the notification, such as posting an assignment
  /// or sending a comment.
  final String actorId;

  /// The list of IDs of the users who will receive the notification.
  ///
  /// These users are the "notifiers" who will be informed of the action
  /// performed by the actor. For example, the students in a class may
  /// receive notifications about new assignments.
  final Iterable<String> notifierIds;

  /// The entity that the notification is related to.
  ///
  /// This could be an assignment, a grade, a comment, an event, or any
  /// other domain entity that triggers the notification. The specific
  /// details of this entity are captured in `NotificationEntity`.
  final NotificationEntity entity;

  /// The type of notification.
  ///
  /// This indicates what kind of action triggered the notification, such as
  /// a new assignment, a grade being posted, a comment, or an announcement.
  /// The `NotificationType` enum defines the possible notification types.
  final NotificationType type;
}
