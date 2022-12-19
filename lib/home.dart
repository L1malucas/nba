import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      body: const Center(child: Text('Home Page')),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Jogos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Estatísticas',
          ),
        ],
      ),
    );
  }
}
