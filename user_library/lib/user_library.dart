library user_library;

class User {
  String userName;
  String userFname;
  String password;
  String mail;
  String userNumber;
  double waterUsed;

  User(
      {required this.userName,
      required this.userFname,
      required this.password,
      required this.mail,
      required this.userNumber,
      required this.waterUsed});
}

class UserAuthenticator {
  final List<User> users;

  UserAuthenticator()
      : users = [
          User(
              userName: 'Marc',
              userFname: 'Dupont',
              password: 'forfaio1',
              mail: 'marc@gmail.com',
              userNumber: '06 01 02 03 04',
              waterUsed: 40.0),
          User(
              userName: 'Emma',
              userFname: 'Laurent',
              password: 'forfaio2',
              mail: 'emma@gmail.com',
              userNumber: '06 04 03 02 01',
              waterUsed: 2.0),
        ];

  bool authenticate(String username, String password) {
    for (User user in users) {
      if (user.userName == username && user.password == password) {
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
