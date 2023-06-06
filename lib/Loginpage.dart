// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:forfait_mo50/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
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

    if (username.isEmpty) {
      errors.add('please enter user name');
    }

    if (password.isEmpty) {
      errors.add('please enter password');
    }

    if (username != 'forfaio' || password != 'forfaio') {
      errors.add('wrong user name or password');
    }

    if (errors.isNotEmpty) {
      setState(() {
        _errorMessage = errors.join(',\n ');
      });
      return;
    }

    // 登录成功
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'Forfait')));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(  // Added Center
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Set mainAxisAlignment to center
            crossAxisAlignment: CrossAxisAlignment.center,  // Change CrossAxisAlignment.start to CrossAxisAlignment.center
            children: [
              const SizedBox(height: 100),
              Transform.translate(  // Added Transform.translate
                offset: const Offset(0, -90),  // Upwards by 50 units
                child: Transform.scale(  // Added Transform.scale
                  scale: 0.85,  // Scale by 0.5 times
                  child: Image.asset('assets/images/2.png'),  // Your image
                ),
              ),
              Transform.translate(  // Added Transform.translate
                offset: const Offset(0, -50),  // Upwards by 50 units
                child: Transform.scale(  // Added Transform.scale
                  scale: 2,  // Scale by 1.5 times
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
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              Row(
                children: const [
                  Spacer(),  // Fill remaining space
                  Text('Mot de passe oublie'),  // Your text
                ],
              ),
              const SizedBox(height: 20),
               if (_errorMessage != null) 
                Text(
                  'Error: $_errorMessage',
                  style: const TextStyle(color: Colors.red),
                ),
              Transform.translate(  // Added Transform.translate
                offset: const Offset(0, 50),  // Downwards by 50 units
                child: Transform.scale(  // Added Transform.scale
                  scale: 1.5,  // Scale by 1.5 times
                  child: ElevatedButton(
                    onPressed: _login,
                    child: const Text('Connexion'),
                  ),
                ),
              ),
              const SizedBox(height: 120), 
              const Text(
                'Texte? Lien inscription',
                textAlign: TextAlign.center,  // Center the text
                style: TextStyle(fontSize: 20), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}