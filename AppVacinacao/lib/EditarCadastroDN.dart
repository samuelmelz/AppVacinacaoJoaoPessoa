import 'package:flutter/material.dart';
import 'package:vacinacao/EditarCadastroGP.dart';

import 'Login.dart';

class EditarCadastroDN extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditarCadastroDNState();
  }
}

class _EditarCadastroDNState extends State<EditarCadastroDN> {
  bool backSpace = false;
  int tamAntes = 0;

  final controllerDataNascimento = TextEditingController();

  final RegExp numRegExp = RegExp('[a-zA-Z]');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MesmoAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 50, left: 50, bottom: 20),
        child: ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: <Widget>[
              Text(
                'Atualização de dados pessoais',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 21,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Preencha o formulário para atualizar o seu cadastro.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 23),
              Text(
                'DATA DE NASCIMENTO',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(height: 10),
              TextField(
                cursorWidth: 1,
                cursorColor: Colors.greenAccent[700],
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 10,
                controller: controllerDataNascimento,
                onChanged: (String value) {
                  backSpace = tamAntes > value.length;
                  tamAntes = value.length;
                  if (!numRegExp.hasMatch(value) && !backSpace) {
                    if ((value.length == 2 || value.length == 5)) {
                      value = value.trim();
                      try {
                        String s =
                            value.replaceRange(value.length, value.length, '/');
                        controllerDataNascimento.text = s;
                        controllerDataNascimento.selection =
                            TextSelection.fromPosition(
                                TextPosition(offset: s.length));
                      } catch (e) {}
                    }
                  }
                },
                style: TextStyle(
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Ex.: 31/12/1961',
                  labelText: '                    Ex.: 31/12/1961',
                  labelStyle: TextStyle(height: 1),
                  filled: true,
                  fillColor: Colors.grey[200],
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(0)),
                  counterText: '',
                ),
              ),
              SizedBox(height: 245),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 17,
                    color: Colors.grey[700],
                  ),
                  label: Text(
                    'Voltar',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  )),
              SizedBox(height: 5),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditarCadastroGP()));
                },
                elevation: 0,
                label: const Text(
                  'Prosseguir',
                  style: TextStyle(
                    fontSize: 19,
                    height: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: Colors.green[400],
              ),
            ]),
      ),
    );
  }
}
