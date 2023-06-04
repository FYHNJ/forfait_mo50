import 'package:flutter/material.dart';
import 'package:forfait_mo50/Profile/profile.dart';
import './Accueil/accueil.dart';
void main() {
  runApp(const MyApp());
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forfait',
      theme: ThemeData(
         primarySwatch: createMaterialColor(const Color.fromARGB(235, 69, 199, 177)),
      ),
      home: const MyHomePage(title: 'Forfait'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:2, child:Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: const TabBarView(children: <Widget>[
        Accueil(),
        Profile(),
      ],
      ),

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color:Color.fromARGB(255, 236, 236, 236)),
        height: 70,
        child: const TabBar(
          labelStyle: TextStyle(height: 0,fontSize: 15),
          tabs:<Widget>[
            Tab(icon:Icon(Icons.home),text:'Accueil'),
            Tab(icon:Icon(Icons.person),text:'Profile')
          ]
        ),
      ),
    )
    );
  }
}
