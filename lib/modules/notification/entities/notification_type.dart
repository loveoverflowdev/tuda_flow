/// Defines the various types of notifications that can be generated in the system.
///
/// This enum represents different actions or events that trigger notifications,
/// such as new announcements, comments, group invitations, events, and materials.
enum NotificationType {
  announcementPosted, // A new announcement has been posted
  newComment, // A new comment has been added to an assignment, announcement, or discussion
  commentReply, // A reply to an existing comment
  groupInvitation, // Notifications for group invitations
  eventScheduled, // Notifications for scheduled events
  eventReminder, // A reminder for an upcoming event or deadline
  newMaterial, // Notifications for new materials (documents/resources) added to a group
}
