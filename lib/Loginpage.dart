// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:forfait_mo50/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
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
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              Transform.translate(  // Added Transform.translate
                offset: const Offset(0, 50),  // Downwards by 50 units
                child: Transform.scale(  // Added Transform.scale
                  scale: 1.5,  // Scale by 1.5 times
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform login action
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'Forfait')));
                    },
                    child: const Text('Connexion'),
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