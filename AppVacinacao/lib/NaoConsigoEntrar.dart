import 'package:flutter/material.dart';

import 'Cadastrar.dart';
import 'Login.dart';

class NaoConsigoEntrar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NaoConsigoEntrarState();
  }
}

class NaoConsigoEntrarState extends State<NaoConsigoEntrar> {
  final RegExp numRegExp = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MesmoAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 70, left: 60, bottom: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Não consigo entrar',
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 23,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              Text(
                '1. Caso não esteja conseguindo entrar',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'verifique com atenção se o CPF foi digitado corretamente.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 30),
              Text(
                '2. Verifique se o seu aplicativo está com a versão mais recente. Se não estiver, atualize o seu aplicativo e tente novamente.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Text(
                '3. Se ainda não estiver conseguindo, entre em contato através do botão Fale Conosco abaixo, informando o problema e o seu CPF.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cadastrar()));
                },
                elevation: 0,
                label: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                backgroundColor: Colors.green[400],
              ),
              SizedBox(height: 40),
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
                  ))
            ]),
      ),
    );
  }
}
