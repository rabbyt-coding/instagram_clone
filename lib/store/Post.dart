
import 'package:flutter/material.dart';
import 'package:instagram_clone/model/Post.dart';
import 'package:instagram_clone/service/api.dart';

class PostProvider with ChangeNotifier {
  final _service = Service();

  List<Post>? _posts;
  bool _loader = false;
  get loader => _loader;

  List<Post>? get posts => _posts;

  loadPosts() {
    if (_posts == null) {
      _loader = true;
      notifyListeners();
      return _service.getPosts().then((value) {
        _posts = value;
        _loader = false;
        notifyListeners();
      });
    }
  }

  Post getPost(int postId) {
    return _posts!.firstWhere((element) => element.id == postId);
  }
}
