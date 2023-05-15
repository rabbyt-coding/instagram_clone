
import 'package:flutter/material.dart';
import 'package:instagram_clone/model/User.dart';
import 'package:instagram_clone/service/api.dart';

class UserProvider with ChangeNotifier {
  final _service = Service();

  User? _loggedUser;
  UserProfile? _userProfile;
  List<User>? _users;

  bool _loader = false;

  get loader => _loader;

  get users => _users;

  get userProfile => _userProfile;

  get loggedUser => _loggedUser;

  loadUserProfile() {
    if (_userProfile == null) {
      _loader = true;
      notifyListeners();

      return _service.getUserProfile(1).then(( value ) {
        _userProfile = value;
        _loader = false;
        notifyListeners();
      });
    }
  }

  loadLoggeduser() {
    if (_loggedUser == null) {
      _loader = true;
      notifyListeners();

      return _service.getLoggedUser().then(( value ) {
        _loggedUser = value;
        _loader = false;
        notifyListeners();
      });
    }
  }

  loadUsers() {
    if (_users == null) {
      _loader = true;
      notifyListeners();

      return _service.getUsers().then(( value ) {
        _users = value;
        _loader = false;
        notifyListeners();

      });
    }
  }

  User getuserById(int userId) {
    return _users!.firstWhere(( element ) => element.id ==userId);
  }
}
