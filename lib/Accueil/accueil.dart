import 'package:flutter/material.dart';

class Accueil extends StatefulWidget{

  const Accueil({Key? key}):super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AccueilState createState() {
    return _AccueilState();
  }
}

class _AccueilState extends State<Accueil>{
    @override
    Widget build(BuildContext context){
      return Stack(
        children: [
          Positioned(
            top:25,
            left:165,
            child: Image.asset(
            'assets/images/1.jpeg',
            width: 70,
            height: 70,
          )
          ),
          
          Padding( // Padding widget adds empty space
          padding: const EdgeInsets.only(top: 370), // 200 units padding from the top
          child: Center( // Center widget centers its children
            child: Row( // Row widget places its children horizontally
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Aligns the row's children evenly distributed along the row
              children: <Widget>[
                ElevatedButton( // Button "Jour"
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 1, 29, 59), disabledForegroundColor: const Color.fromARGB(255, 1, 29, 59).withOpacity(0.38), disabledBackgroundColor: const Color.fromARGB(255, 1, 29, 59).withOpacity(0.12), backgroundColor: const Color.fromARGB(255, 244, 246, 248), // This is the color of text
                    shape: RoundedRectangleBorder( // Shape of the button
                      borderRadius: BorderRadius.circular(30), // Roundness of button
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Padding of button
                    textStyle: const TextStyle( // Text style
                      fontSize: 15, // Font size
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                  ),
                  child: const Text('Jour'),
                ),
                ElevatedButton( // Button "Mois"
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 1, 29, 59), backgroundColor: const Color.fromARGB(255, 244, 246, 248), // This is the color of text
                    shape: RoundedRectangleBorder( // Shape of the button
                      borderRadius: BorderRadius.circular(30), // Roundness of button
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Padding of button
                    textStyle: const TextStyle( // Text style
                      fontSize: 15, // Font size
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                  ),
                  child: const Text('Mois'),
                ),
                ElevatedButton( // Button "Année"
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 1, 29, 59), backgroundColor: const Color.fromARGB(255, 244, 246, 248), // This is the color of text
                    shape: RoundedRectangleBorder( // Shape of the button
                      borderRadius: BorderRadius.circular(30), // Roundness of button
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Padding of button
                    textStyle: const TextStyle( // Text style
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