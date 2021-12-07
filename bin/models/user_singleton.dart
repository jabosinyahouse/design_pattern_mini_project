import 'user.dart';

class UserSingleton extends User {
  static UserSingleton? _userInstance;

  UserSingleton._internal() {
    setName("Jabos");
    setUsername("jabosinyahouse");
    setPassword("mysecretpassword");
  }

  static UserSingleton? getUserInstance() {
    // Same as _userInstance == null
    _userInstance ??= UserSingleton._internal();
    return _userInstance;
  }
}
