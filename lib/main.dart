import 'package:flutter/material.dart';
import 'package:ligas/pages/competition.dart';
import 'package:ligas/pages/match.dart';
import 'package:ligas/pages/matches.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deportes',
      theme: ThemeData(
        primarySwatch: Colors.green,

      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const Competition(),
        '/matches':(context) => const Matches(),
        '/match' :(context) => const Match()
      },
    );
  }
}