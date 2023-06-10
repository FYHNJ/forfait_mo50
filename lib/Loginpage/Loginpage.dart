// ignore_for_file: file_names, library_private_types_in_public_api, deprecated_member_use

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
    User? user;
    if (isAuthenticated) {
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
        return;
      }
    }

    if (username.isEmpty) {
      errors.add("Veuillez saisir votre nom d'utilisateur");
    } else if (password.isEmpty) {
      errors.add('Veuillez saisir votre mot de passe');
    } else {
      errors.add("Nom d'utilisateur ou mot de passe incorrect");
    }
    setState(() {
      _errorMessage = errors.isNotEmpty ? errors.join(',\n ') : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Transform.translate(
                offset: const Offset(0, -90),
                child: Transform.scale(
                  scale: 0.85,
                  child: Image.asset('assets/images/2.png'),
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -50),
                child: Transform.scale(
                  scale: 2,
                  child: const Text('Connexion'),
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: "Nom d'utilisateur",
                ),
              ),
              TextField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
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
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Impossible de lancer $url';
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
                  'Erreur: $_errorMessage',
                  style: const TextStyle(color: Colors.red),
                ),
              Transform.translate(
                offset: const Offset(0, 50),
                child: Transform.scale(
                  scale: 1.5,
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
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Impossible de lancer $url';
                  }
                },
                child: const Text(
                  "Lien d'inscription",
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
