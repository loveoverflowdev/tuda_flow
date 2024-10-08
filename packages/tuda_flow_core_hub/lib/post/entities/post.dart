class Post {
  final String id;
  late final String title;
  late final String content;
  late final DateTime createdAt;
  late final DateTime updatedAt;
  late final String authorId;

  Post({
    required this.id,
    String? title,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? authorId,
  }) {
    if (title != null) this.title = title;
    if (content != null) this.content = content;
    if (createdAt != null) this.createdAt = createdAt;
    if (updatedAt != null) this.updatedAt = updatedAt;
    if (authorId != null) this.authorId = authorId;
  }
}
