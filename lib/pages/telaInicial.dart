import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:nbainfo/pages/telaJogadores.dart';
import 'package:nbainfo/pages/telaResultados.dart';
import 'package:nbainfo/pages/telaTimes.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<String> _itens = [
    "Resultados",
    "Times",
    "Tabela",
    "Leste",
    "Oeste",
    "Jogadores"
  ];
  final List<IconData> _icones = [
    Icons.scoreboard,
    Icons.groups,
    Icons.list_alt,
    Icons.turn_left,
    Icons.turn_right,
    Icons.sports_handball
  ];

  final List telas = [
    const Resultados(),
    const ExibeTimes(),
    const Jogadores(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1 / 1.4,
          children: List.generate(_itens.length, (index) {
            return Center(
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => telas[index])));
                  },
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(size: 40, _icones[index]),
                        const SizedBox(height: 32),
                        Text(
                          _itens[index],
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
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
