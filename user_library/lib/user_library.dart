library user_library;

class User {
  String userName; // User's username
  String userFname; // User's first name
  String password; // User's password
  String mail; // User's email address
  String userNumber; // User's contact number
  double waterUsedDay; // Amount of water used by the user in a day
  double waterUsedMonth; // Amount of water used by the user in a month
  double waterUsedYear; // Amount of water used by the user in a year

  User({
    required this.userName,
    required this.userFname,
    required this.password,
    required this.mail,
    required this.userNumber,
    required this.waterUsedDay,
    required this.waterUsedMonth,
    required this.waterUsedYear,
  });
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
            waterUsedDay: 5.0,
            waterUsedMonth: 50,
            waterUsedYear: 600,
          ),
          User(
            userName: 'Emma',
            userFname: 'Laurent',
            password: 'forfaio2',
            mail: 'emma@gmail.com',
            userNumber: '06 04 03 02 01',
            waterUsedDay: 2.0,
            waterUsedMonth: 20,
            waterUsedYear: 500,
          ),
        ];

  bool authenticate(String username, String password) {
    for (User user in users) {
      if (user.userName == username && user.password == password) {
        return true; // Authentication successful
      }
    }
    return false; // Authentication failed
  }
}

class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
