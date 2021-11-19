import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Login.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              width: 30,
              height: 30,
              child: Checkbox(
                value: value,
                onChanged: (bool? newValue) {
                  onChanged(newValue);
                },
                activeColor: Colors.blue,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Text(
              label,
              style: TextStyle(fontSize: 16),
            )),
          ],
        ),
      ),
    );
  }
}

class EditarCadastroFim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditarCadastroFimState();
  }
}

class _EditarCadastroFimState extends State<EditarCadastroFim> {
  bool backSpace = false;
  int tamAntes = 0;
  final controllerDataNascimento = TextEditingController();
  int? val = -1;
  final RegExp numRegExp = RegExp('[a-zA-Z]');

  @override
  Widget build(BuildContext context) {
/*     double phoneWidth = MediaQuery.of(context).size.width;
    double phoneHeight = MediaQuery.of(context).size.height; */

    return Scaffold(
      appBar: MesmoAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 40, right: 40, bottom: 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 90),
              Icon(
                Icons.check_circle,
                color: Colors.green[400],
                size: 90,
              ),
              SizedBox(height: 1),
              Text(
                'Obrigado!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 9.0, right: 9),
                child: Text(
                  'Seu cadastro foi atualizado com sucesso!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(height: 1),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                elevation: 0,
                label: Center(
                  child: const Text(
                    'Menu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      height: 1.9,
                      fontWeight: FontWeight.bold,
                    ),
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
