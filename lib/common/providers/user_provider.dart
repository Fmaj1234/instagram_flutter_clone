import 'package:flutter/widgets.dart';
import 'package:instagram_flutter_clone/models/user.dart';
import 'package:instagram_flutter_clone/features/auth/controller/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}