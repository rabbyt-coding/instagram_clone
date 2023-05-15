import 'package:instagram_clone/model/Commnet.dart';

class Post {
  final int id;
  final int userId;
  final String imageUrl;
  final String description;
  final int likes;
  final String date;
  final List<Comment> comments;

  Post({
    required this.id,
    required this.userId,
    required this.imageUrl,
    required this.description,
    required this.likes,
    required this.date,
    required this.comments,
  });
}
