class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

class UserProfile {
  final int userId;
  final String description;
  final String name;
  final int followers;
  final int following;
  final List<int> postsIds;

  UserProfile({
    required this.userId,
    required this.description,
    required this.name,
    required this.followers,
    required this.following,
    required this.postsIds
  });
}
