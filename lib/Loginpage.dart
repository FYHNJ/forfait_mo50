// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:forfait_mo50/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user_library/user_library.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  String? _errorMessage;

  late UserAuthenticator authenticator;

  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();

    authenticator = UserAuthenticator();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    List<String> errors = [];
    bool isAuthenticated = authenticator.authenticate(username, password);

    if (isAuthenticated) {
      User? user;
      try {
        user = authenticator.users.firstWhere(
          (u) => u.userName == username && u.password == password,
        );
      } catch (e) {
        user = null;
      }

      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(title: 'Forfait', user: user!),
          ),
        );
      }
    }
    // 处理登录失败的情况
    // 可以显示错误消息或者其他逻辑
    if (username.isEmpty) {
      errors.add('please enter user name');
    }

    if (password.isEmpty) {
      errors.add('please enter password');
    }

    if (errors.isEmpty) {
      errors.add('invalid username or password');
    }

    setState(() {
      _errorMessage = errors.join(',\n ');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Added Center
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Set mainAxisAlignment to center
            crossAxisAlignment: CrossAxisAlignment
                .center, // Change CrossAxisAlignment.start to CrossAxisAlignment.center
            children: [
              const SizedBox(height: 100),
              Transform.translate(
                // Added Transform.translate
                offset: const Offset(0, -90), // Upwards by 50 units
                child: Transform.scale(
                  // Added Transform.scale
                  scale: 0.85, // Scale by 0.5 times
                  child: Image.asset('assets/images/2.png'), // Your image
                ),
              ),
              Transform.translate(
                // Added Transform.translate
                offset: const Offset(0, -50), // Upwards by 50 units
                child: Transform.scale(
                  // Added Transform.scale
                  scale: 2, // Scale by 1.5 times
                  child: const Text('Connectez-vous'),
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              TextField(
                controller: _passwordController,
                obscureText:
                    !_isPasswordVisible, // Make the text obscured unless _isPasswordVisible is true
                decoration: InputDecoration(
                  labelText: 'Password',
                  // Add a suffix icon
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Change the icon based on the password visibility
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    // Add an onPressed function to change the visibility when pressed
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.forfaio.fr/douche-economique-ecologique/mon-compte';
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: const Text(
                      'Mot de passe oublié',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (_errorMessage != null)
                Text(
                  'Error: $_errorMessage',
                  style: const TextStyle(color: Colors.red),
                ),
              Transform.translate(
                // Added Transform.translate
                offset: const Offset(0, 50), // Downwards by 50 units
                child: Transform.scale(
                  // Added Transform.scale
                  scale: 1.5, // Scale by 1.5 times
                  child: ElevatedButton(
                    onPressed: _login,
                    child: const Text('Connexion'),
                  ),
                ),
              ),
              const SizedBox(height: 120),
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://www.forfaio.fr/douche-economique-ecologique/mon-compte';
                  // ignore: deprecated_member_use
                  if (await canLaunch(url)) {
                    // ignore: deprecated_member_use
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: const Text(
                  'Lien inscription',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
