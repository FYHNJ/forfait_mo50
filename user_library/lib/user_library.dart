library user_library;

class User {
  final String username;
  final String password;
  double waterUsed;

  User(this.username, this.password,this.waterUsed);
}

class UserAuthenticator {
  final List<User> users;

  UserAuthenticator()
    : users = [
        User('forfaio1', 'forfaio1',3.0),
        User('forfaio2', 'forfaio2',5.0),
      ];

  bool authenticate(String username, String password) {
    for (User user in users) {
      if (user.username == username && user.password == password) {
        return true;
      }
    }
    return false;
  }
}

class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}