import 'package:camara_deputados/pages/padrao.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'De olho nos deputados',
      // theme: ThemeData(
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      routes: {
        "/": (context) => PaginaPadrao(
          body: Center(child: Text("Landing page")),
        ),
        "/partidos": (context) => PaginaPadrao(
          body: Center(child: Text("Partidos")),
        ),
        "/proposicoes": (context) => PaginaPadrao(
          body: Center(child: Text("Proposicoes")),
        ),
        "/deputados": (context) => PaginaPadrao(
          body: Center(child: Text("Deputados")),
        ),
      },
    );
  }
}
