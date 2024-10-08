/// Represents a group in the system.
///
/// A group can be any collection of users or entities within the system,
/// such as a class, a project group, or a task group. The group has
/// an identifier, a name, a code, and a description. It also tracks
/// when it was created and last updated.
class Group {
  /// Creates a new `Group` instance.
  ///
  /// - [id] is the unique identifier for the group (required).
  /// - [code] is an optional parameter for assigning a code to the group.
  /// - [name] is an optional parameter for setting the group's display name.
  /// - [description] is an optional parameter for adding a brief description.
  /// - [createdAt] is an optional parameter for specifying the creation date.
  /// - [updatedAt] is an optional parameter for specifying the last update time.
  Group({
    required this.id,
    String? code,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    // Initialize the optional fields if provided.
    if (code != null) this.code = code;
    if (name != null) this.name = name;
    if (description != null) this.description = description;
    if (createdAt != null) this.createdAt = createdAt;
    if (updatedAt != null) this.updatedAt = updatedAt;
  }

  /// Unique identifier for the group.
  ///
  /// This ID is used to uniquely identify the group within the system.
  /// It could be an auto-generated value or a manually assigned value
  /// based on the system's requirements.
  final String id;

  /// The name of the group.
  ///
  /// This is the display name of the group, used to represent it in
  /// the user interface. For example, it could be the name of a class
  /// or a project team.
  late final String name;

  /// A unique code assigned to the group.
  ///
  /// The code can be used to identify or join the group. It could
  /// function similarly to an invite code or a course code in educational systems.
  late final String code;

  /// A brief description of the group.
  ///
  /// This field contains additional information about the group, such
  /// as its purpose, objectives, or other relevant details that help
  /// users understand the group's role.
  late final String description;

  /// The timestamp of when the group was created.
  ///
  /// This is automatically set when the group is initially created.
  /// It can be used to track how long the group has existed.
  late final DateTime createdAt;

  /// The timestamp of the last time the group was updated.
  ///
  /// This is set whenever any information about the group changes,
  /// such as its name, description, or other details. It helps track
  /// when the group was last modified.
  late final DateTime updatedAt;
}
