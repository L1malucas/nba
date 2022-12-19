// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nbainfo/models/team.dart';

List<Time> times = [];

Future getTeams() async {
  var response = await http.get(Uri.https("balldontlie.io", "api/v1/teams"));
  print('response.body ${response.body}');
  var jsonData = jsonDecode(response.body);

  if (times.length <= 30) {
    for (var cadaTime in jsonData['data']) {
      final time = Time(
          nome: cadaTime['name'],
          sigla: cadaTime['abbreviation'],
          conferencia: cadaTime['conference']);
      times.add(time);
      print('times.length ${times.length}');
      print('cada time $cadaTime');
    }
  }
}
