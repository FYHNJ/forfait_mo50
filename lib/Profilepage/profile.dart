// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:user_library/user_library.dart';
import 'package:forfait_mo50/Loginpage/Loginpage.dart';
import 'package:forfait_mo50/Profilepage/user_profile.dart';

class Profile extends StatefulWidget {
  final User user;
  const Profile({Key? key, required this.user}) : super(key: key);

  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 32,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/${widget.user.userName}.jpeg',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 131),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.user.userName,
                      semanticsLabel: widget.user.userFname,
                      style: const TextStyle(
                        fontSize: 34,
                        color: Color.fromRGBO(0, 40, 85, 1),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      widget.user.userFname,
                      style: const TextStyle(
                        fontSize: 34,
                        color: Color.fromRGBO(0, 40, 85, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 206),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            UserProfilePage(user: widget.user),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromRGBO(0, 40, 85, 1),
                    textStyle: const TextStyle(
                      fontSize: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side:
                          const BorderSide(color: Color.fromRGBO(0, 40, 85, 1)),
                    ),
                  ),
                  child: const Text('Modifier mon profil',
                      style: TextStyle(color: Color.fromRGBO(0, 40, 85, 1))),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 354),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Image.asset(
                              'assets/images/facture.jpeg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 54.0),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Voir mes factures',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Image.asset(
                              'assets/images/arrow.jpeg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Image.asset(
                              'assets/images/1.jpeg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 54.0),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Mon forfait',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Image.asset(
                              'assets/images/arrow.jpeg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Image.asset(
                              'assets/images/logout.jpeg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 54.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Déconnexion',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Image.asset(
                              'assets/images/arrow.jpeg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 621),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    backgroundColor: const Color.fromRGBO(0, 40, 85, 1),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 26,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side:
                          const BorderSide(color: Color.fromRGBO(0, 40, 85, 1)),
                    ),
                  ),
                  child: const Text('Régler mes factures',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
