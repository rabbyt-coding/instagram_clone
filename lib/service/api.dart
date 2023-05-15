import 'package:instagram_clone/mock/data.dart';
import 'package:instagram_clone/model/Post.dart';
import 'package:instagram_clone/model/Story.dart';
import 'package:instagram_clone/model/User.dart';

class Service {
  // backend api "call"

  Future<User> getLoggedUser() async {
    await Future.delayed(const Duration(seconds: 1));
    return loggedUser;
  }

  Future<UserProfile> getUserProfile(int userId) async {
    await Future.delayed(const Duration(seconds: 1));
    return userProfile;
  }

  Future<List<Post>> getPosts() async {
    await Future.delayed(const Duration(seconds: 1));
    return posts;
  }

  Future<List<User>> getUsers() async {
    await Future.delayed(const Duration(seconds: 1));
    return users;
  }

  Future<List<Story>> getStories() async {
    await Future.delayed(const Duration(seconds: 1));
    return stories;
  }

}
