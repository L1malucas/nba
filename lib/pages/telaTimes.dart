import 'package:flutter/material.dart';

import '../components/requests.dart';

class ExibeTimes extends StatelessWidget {
  const ExibeTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Times'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: getTeams(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: times.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(times[index].sigla),
                    subtitle: Text(times[index].nome),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
