import 'package:destino_chaco/pages/home_page.dart';
import 'package:destino_chaco/pages/settings_page.dart';
import 'package:destino_chaco/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:destino_chaco/pages/rides_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DestinoChaco',
      theme: ThemeData(fontFamily: 'Nunito Sans'),
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
    );
  }
}