import 'package:flutter/material.dart';
import 'package:nbainfo/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blueGrey,
      theme:
          ThemeData(primarySwatch: Colors.indigo, primaryColor: Colors.indigo),
      home: const Home(),
    );
  }
}
