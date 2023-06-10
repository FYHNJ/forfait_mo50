// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:user_library/user_library.dart';

class Accueil extends StatefulWidget {
  final User user;

  const Accueil({Key? key, required this.user}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final double _totalWaterDay = 10.0;
  final double _totalWaterMonth = 100;
  final double _totalWaterYear = 1000;
  late double _totalWater;
  late double _waterUsed;
  String consommation = 'du jour';

  @override
  void initState() {
    super.initState();
    _totalWater = _totalWaterDay;
    _waterUsed = widget.user.waterUsedDay;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 25,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/1.jpeg',
              width: 70,
              height: 70,
            ),
          ),
        ),
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
                  onPressed: () {
                    setState(() {
                      _totalWater = _totalWaterDay;
                      _waterUsed = widget.user.waterUsedDay;
                      consommation = 'du jour';
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      _totalWater = _totalWaterMonth;
                      _waterUsed = widget.user.waterUsedMonth;
                      consommation = 'du mois';
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      _totalWater = _totalWaterYear;
                      _waterUsed = widget.user.waterUsedYear;
                      consommation = "de l'année";
                    });
                  },
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
        Transform.translate(
            offset: const Offset(0, -50),
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Center(
                child: Card(
                  // Card 1

                  elevation: 5, // shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.9, // 90% of screen width
                    height: 350,
                    child: Column(
                      children: [
                        Container(
                          // Green navigation bar
                          width: 370,
                          height: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(235, 69, 199, 177),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 17),
                        const Text(
                          'Ma consommation',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 33,
                          ),
                        ),
                        Text(
                          consommation,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 33,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                            // Card 2
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Litres restants:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '${_totalWater - _waterUsed}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 17),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)), // 设定圆角半径
                                    child: SizedBox(
                                      height: 40, // 设定进度条的高度
                                      child: LinearProgressIndicator(
                                        value: (_totalWater - _waterUsed) /
                                            _totalWater,
                                        backgroundColor:
                                            const Color.fromARGB(255, 3, 3, 58),
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                                Color.fromRGBO(
                                                    219, 128, 17, 1)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
