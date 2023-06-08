// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final StreamController<int> _streamController = StreamController<int>();

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      _streamController.add(Random().nextInt(100));
    });
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100, // Or any other position you prefer
          left: 100, // Or any other position you prefer
          child: StreamBuilder<int>(
            stream: _streamController.stream.asBroadcastStream(),
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return const Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasData) {
                    return Center(child: Text('Data: ${snapshot.data}'));
                  } else {
                    return const Text('No data');
                  }
              }
            },
          ),
        ),
        Positioned(
            top: 25,
            left: 165,
            child: Center(
              child: Image.asset(
                'assets/images/1.jpeg',
                width: 70,
                height: 70,
              ),
            )),
        Padding(
          // Padding widget adds empty space
          padding:
              const EdgeInsets.only(top: 370), // 200 units padding from the top
          child: Center(
            // Center widget centers its children
            child: Row(
              // Row widget places its children horizontally
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Aligns the row's children evenly distributed along the row
              children: <Widget>[
                ElevatedButton(
                  // Button "Jour"
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 1, 29, 59),
                    disabledForegroundColor:
                        const Color.fromARGB(255, 1, 29, 59).withOpacity(0.38),
                    disabledBackgroundColor:
                        const Color.fromARGB(255, 1, 29, 59).withOpacity(0.12),
                    backgroundColor: const Color.fromARGB(
                        255, 244, 246, 248), // This is the color of text
                    shape: RoundedRectangleBorder(
                      // Shape of the button
                      borderRadius:
                          BorderRadius.circular(30), // Roundness of button
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10), // Padding of button
                    textStyle: const TextStyle(
                      // Text style
                      fontSize: 15, // Font size
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                  ),
                  child: const Text('Jour'),
                ),
                ElevatedButton(
                  // Button "Mois"
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 1, 29, 59),
                    backgroundColor: const Color.fromARGB(
                        255, 244, 246, 248), // This is the color of text
                    shape: RoundedRectangleBorder(
                      // Shape of the button
                      borderRadius:
                          BorderRadius.circular(30), // Roundness of button
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10), // Padding of button
                    textStyle: const TextStyle(
                      // Text style
                      fontSize: 15, // Font size
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                  ),
                  child: const Text('Mois'),
                ),
                ElevatedButton(
                  // Button "Année"
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 1, 29, 59),
                    backgroundColor: const Color.fromARGB(
                        255, 244, 246, 248), // This is the color of text
                    shape: RoundedRectangleBorder(
                      // Shape of the button
                      borderRadius:
                          BorderRadius.circular(30), // Roundness of button
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10), // Padding of button
                    textStyle: const TextStyle(
                      // Text style
                      fontSize: 15, // Font size
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                  ),
                  child: const Text('Année'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
