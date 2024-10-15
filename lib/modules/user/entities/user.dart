class User {
  final String id;
  final String? avatarUrl;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? bio;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? hashedPassword;

  User({
    required this.id,
    required this.avatarUrl,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.createdAt,
    required this.updatedAt,
    required this.hashedPassword,
  });
}

class UserBrief {
  final String id;
  final String? avatarUrl;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? bio;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserBrief({
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

class UserItem {
  final String id;
  final String? avatarUrl;
  final String? username;
  final String? firstName;
  final String? lastName;

  UserItem({
    required this.id,
    this.avatarUrl,
    this.username,
    this.firstName,
    this.lastName,
  });
}
