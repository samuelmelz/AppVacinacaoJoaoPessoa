import 'package:flutter/material.dart';

import 'EditarCadastroDoencas.dart';
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

class EditarCadastroGP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditarCadastroGPState();
  }
}

class _EditarCadastroGPState extends State<EditarCadastroGP> {
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
                'Você faz parte de algum grupo prioritário?',
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
                                builder: (context) => EditarCadastroDoencas()));
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
  var ehPriori = new List.filled(30, false, growable: false);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        padding: const EdgeInsets.only(left: 0, right: 20, top: 10, bottom: 10),
        children: [
          LabeledCheckbox(
            label: 'Pessoas com 60 anos ou mais residentes em asilos',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[0],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[0] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Pessoas com deficiência institucionalizadas',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[1],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[1] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Povos indígenas vivendo em terras indígenas',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[2],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[2] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Profissionais de Saúde',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[3],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[3] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Povos e comunidades tradicionais ribeirinhas',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[4],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[4] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Povos e comunidades tradicionais quilombolas',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[5],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[5] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'População privada de liberdade',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[6],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[6] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Forças de segurança e salvamento',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[7],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[7] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Forças armadas',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[8],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[8] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores do transporte público',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[9],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[9] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores do transporte rodoviário',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[10],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[10] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Não faço parte de nenhum grupo prioritário',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[11],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[11] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Pessoas de 80 anos ou mais',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[12],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[12] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Pessoas de 75 a 79 anos',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[13],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[13] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Pessoas de 70 a 74 anos',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[14],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[14] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Pessoas de 65 a 69 anos',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[15],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[15] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'TPessoas de 60 a 64 anos',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[16],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[16] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores da Saúde',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[17],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[17] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Gestantes e puérperas',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[18],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[18] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Pessoas com deficiência permanente grave',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[19],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[19] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Estagiário da saúde (obg. comprovação)',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[20],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[20] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores do transporte rodoviário',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[21],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[21] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label:
                'Trabalhadores da educação básica (creche, pré-escolar e fun...',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[22],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[22] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores da Educação Básica (Ensino médio)',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[23],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[23] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores da Educação (Ensino superior)',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[24],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[24] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label:
                'Trabalhadores da Educação (Ensino profissionalizante e EJA)',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[25],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[25] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores da Limpeza Urbana',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[26],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[26] = newValue;
              });
            },
          ),
          SizedBox(height: 25),
          LabeledCheckbox(
            label: 'Trabalhadores do Transporte Coletivo',
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            value: ehPriori[27],
            onChanged: (bool newValue) {
              setState(() {
                ehPriori[27] = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
