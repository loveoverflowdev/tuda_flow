class Account {
  final String id;
  final String? avatarUrl;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? bio;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? hashedPassword;

  Account({
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

class AccountBrief {
  final String id;
  final String? avatarUrl;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? bio;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  AccountBrief({
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

class AccountItem {
  final String id;
  final String? avatarUrl;
  final String? username;
  final String? firstName;
  final String? lastName;

  AccountItem({
    required this.id,
    this.avatarUrl,
    this.username,
    this.firstName,
    this.lastName,
  });
}
