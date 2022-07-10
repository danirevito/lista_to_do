import 'package:flutter/material.dart';
import 'package:revisao_lista/tela_formulario.dart';
import 'package:revisao_lista/tela_principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaPrincipal(),
      routes: {
        '/telaPrincipal': (context) => TelaPrincipal(),
        'telaFormulario': (context) => TelaFormulario(),
      },
    );
  }
}
