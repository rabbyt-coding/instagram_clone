import 'dart:ui';

import 'package:instagram_clone/model/Commnet.dart';

class Story {
  final int userId;
  final String imageUrl;
  final String description;
  final int likes;
  final String date;
  final List<Comment> comments;

  Story(
      {required this.userId,
      required this.imageUrl,
      required this.description,
      required this.likes,
      required this.date,
      required this.comments});
}
