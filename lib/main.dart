import 'package:flutter/material.dart';
import 'package:ui/ui/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto IV - UI',
      debugShowCheckedModeBanner: false,
      theme: _theme(),
      home: HomeScreen(),
    );
  }

  _theme() {
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: Colors.red[900],
    );
  }
}
