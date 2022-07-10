import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaFormulario extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _controller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'O campo é obrigatório';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Item',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: (){
                    if(formKey.currentState?.validate() == true){
                      Navigator.of(context).pop(_controller.text);
                    }
                  },
                  child: Text('Salvar'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
