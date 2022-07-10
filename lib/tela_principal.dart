import 'package:flutter/material.dart';
import 'package:revisao_lista/tela_formulario.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  List<String> itens = [];
  var index;

  void adicionarItem(value) {
    itens.add(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
          .pushNamed('/telaFormulario', arguments: TelaFormulario()).then((value){
            if (value != null){
              setState(() {
                adicionarItem(value);
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: itens.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      '${index + 1} - ${itens[index]}',
                      style: const TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
