import 'package:flutter/material.dart';

import 'EditarCadastroFim.dart';
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

class EditarCadastroDoencas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditarCadastroDoencasState();
  }
}

class _EditarCadastroDoencasState extends State<EditarCadastroDoencas> {
  bool backSpace = false;
  int tamAntes = 0;
  final controllerDataNascimento = TextEditingController();
  int? val = -1;
  final RegExp numRegExp = RegExp('[a-zA-Z]');

  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    double phoneHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: MesmoAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 38, right: 38, bottom: 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Você possui alguma comorbidade?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green[400],
                  fontSize: 21,
                ),
              ),
              SizedBox(height: 11),
              Container(
                width: 360,
                height: 360,
                child: GruposPrioritarios(),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 13),
                    TextButton.icon(
                        style: ButtonStyle(),
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
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500]),
                        )),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditarCadastroFim()));
                      },
                      elevation: 0,
                      label: const Text(
                        'Prosseguir',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      backgroundColor: Colors.green[400],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}

class GruposPrioritarios extends StatefulWidget {
  const GruposPrioritarios({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GruposPrioritariosState();
  }
}

class GruposPrioritariosState extends State<GruposPrioritarios> {
  //
  var ehDoente = new List.filled(30, false, growable: false);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        padding: const EdgeInsets.only(left: 0, right: 20, top: 10, bottom: 10),
        children: [
          LabeledCheckbox(
            label: 'Doença cardíaca crônica',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[0],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[0] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Doença cardíaca congênita',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[1],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[1] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Doença cardíaca isquêmica',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[2],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[2] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Doença respiratória crônica',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[3],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[3] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Fibrose cística',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[4],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[4] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Paciente de diálise/hemodiálise',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[5],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[5] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Diabetes',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[6],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[6] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Doenças hematológicas',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[7],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[7] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Imunosupresso',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[8],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[8] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Câncer',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[9],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[9] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Obesidade Grau 3 (IMC > 41)',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[10],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[10] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Não possuo nenhuma comorbidade',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[11],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[11] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Hipertensão Arterial',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[12],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[12] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Transplantado',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[13],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[13] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Anemia Falciforme',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[14],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[14] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Doenças Cerebrovasculares',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[15],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[15] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Pessoas com deficiência permanente grave',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[16],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[16] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Síndrome de Down',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[17],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[17] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Autismo',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[18],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[18] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Doença Neurológica Crônica',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehDoente[19],
            onChanged: (bool newValue) {
              setState(() {
                ehDoente[19] = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
