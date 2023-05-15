
import 'package:flutter/material.dart';
import 'package:instagram_clone/model/Story.dart';
import 'package:instagram_clone/service/api.dart';

class StoryProvider with ChangeNotifier {
  final _service = Service();

  List<Story>? _stories;

  bool _loader = false;

  get loader => _loader;

  loadStories() {
    if (_stories == null || _loader) {
      _loader = true;
      notifyListeners();
      return _service.getStories().then((value) {
        _stories = value;
        _loader = false;
        notifyListeners();
      });
    }
  }

  get stories => _stories;
}
