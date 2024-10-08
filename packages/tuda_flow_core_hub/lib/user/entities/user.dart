class User {
  final String id;
  late final String avatarUrl;
  late final String username;
  late final String firstName;
  late final String lastName;
  late final String bio;
  late final DateTime createdAt;
  late final DateTime updatedAt;

  User({
    required this.id,
    required this.avatarUrl,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.createdAt,
    required this.updatedAt,
  });
}
