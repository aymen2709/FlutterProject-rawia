import 'package:flutter/material.dart';
import 'package:flutter_myapp/abservations.dart';
import 'package:flutter_myapp/homeScreen.dart';
import 'package:flutter_myapp/navigation.dart';
import 'package:flutter_myapp/profil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Municapalité de Hammam Sousse',
      theme: ThemeData(
          fontFamily: "Brand Bold",
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white),
      initialRoute: HomeScreen.idScreen,
      routes: {
        HomeScreen.idScreen: (context) =>  Profil(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
