// ignore_for_file: unnecessary_new, unnecessary_this, prefer_collection_literals

class SENewsModel {
  final String author;
  final String title;
  final String description;
  final String imageUrl;
  final String publishedAt;
  final String content;

  SENewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.publishedAt,
    required this.content,
  });

  factory SENewsModel.fromJson(Map<String, dynamic> json) {
    return SENewsModel(
      author: json['author'] ?? 'Unknown',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }
}
