/// Defines the various types of notifications that can be generated in the system.
///
/// This enum represents different actions or events that trigger notifications,
/// such as new announcements, comments, group invitations, events, and materials.
enum NotificationType {
  /// Notifications for announcements
  announcementPosted, // A new announcement has been posted

  /// A new comment has been added to an assignment, announcement, or discussion
  newComment,

  /// A reply to an existing comment
  commentReply,

  /// Notifications for group invitations
  groupInvitation,

  /// Notifications for events
  eventScheduled,

  /// A reminder for an upcoming event or deadline
  eventReminder,

  /// Notifications for materials/resources
  ///  New materials (documents, resources) have been added to a group
  newMaterial,
}
