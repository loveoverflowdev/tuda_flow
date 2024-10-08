class Group {
  final String id;
  late final String name;
  late final String code;
  late final String description;
  late final DateTime createdAt;
  late final DateTime updatedAt;

  Group({
    required this.id,
    String? code,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    if (code != null) this.code = code;
    if (name != null) this.name = name;
    if (description != null) this.description = description;
    if (createdAt != null) this.createdAt = createdAt;
    if (updatedAt != null) this.updatedAt = updatedAt;
  }
}
