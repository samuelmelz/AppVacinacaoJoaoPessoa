import 'package:flutter/material.dart';

import 'Login.dart';

class Cadastrar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CadastrarState();
  }
}

class _CadastrarState extends State<Cadastrar> {
  bool backSpace = false;
  int tamAntes = 0;
  String valorDropdownSexo = 'Selecione';
  String valorDropdownBairro = 'Selecione';
  final controllerDataNascimento = TextEditingController();
  final controllerCPF = TextEditingController();
  final scrollListViewController = ScrollController();
  final List<String> itensSexo = <String>['Selecione', 'Masculino', 'Feminino'];
  final List<String> itensBairro = <String>[
    'Selecione',
    'Anatólia',
    'Brisamar',
    'Cruz das Armas',
    'Cuiá',
    'Mangabeira MXII',
    'Oitizeiro',
    'Paratibe',
    'Quadramares',
    'Trincheiras'
  ];

  final RegExp numRegExp = RegExp('[a-zA-Z]');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MesmoAppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 20, right: 70, left: 60, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Cadastro de dados pessoais',
              style: TextStyle(
                color: Colors.green[400],
                fontSize: 22,
              ),
            ),
            SizedBox(height: 30),
            ListView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: <Widget>[
                  Text(
                    'Nome completo:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Ex.: Maria José dos Santos Silva',
                      labelText: '     Ex.: Maria José dos Santos Silva',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(0)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sexo:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      value: valorDropdownSexo,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 14,
                        color: Colors.grey[700],
                      ),
                      onChanged: (novoValor) {
                        setState(() {
                          /*                 selectedItemBuilder:
                        (BuildContext context) {
                          return itensSexo.map<Widget>((String item) {
                            return Text(item);
                          }).toList();
                        }; */
                          valorDropdownSexo = novoValor!;
                        });
                      },
                      items: itensSexo
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Data de nascimento:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                            String s = value.replaceRange(
                                value.length, value.length, '/');
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
                  SizedBox(height: 20),
                  Text(
                    'Nome da mãe:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Ex.: Joaquina Maria dos Santos Silva',
                      labelText: 'Ex.: Joaquina Maria dos Santos Silva',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(0)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'CPF:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 14,
                    cursorWidth: 1,
                    cursorColor: Colors.greenAccent[700],
                    controller: controllerCPF,
                    onChanged: (String value) {
                      backSpace = tamAntes > value.length;
                      tamAntes = value.length;
                      if (!numRegExp.hasMatch(value) && !backSpace) {
                        value = value.trim();
                        if ((value.length == 3 || value.length == 7)) {
                          try {
                            String s = value.replaceRange(
                                value.length, value.length, '.');
                            controllerCPF.text = s;
                            controllerCPF.selection =
                                TextSelection.fromPosition(
                                    TextPosition(offset: s.length));
                          } catch (e) {}
                        } else if (value.length == 11) {
                          value = value.trim();
                          try {
                            String s = value.replaceRange(
                                value.length, value.length, '-');
                            controllerCPF.text = s;
                            controllerCPF.selection =
                                TextSelection.fromPosition(
                                    TextPosition(offset: s.length));
                          } catch (e) {}
                        }
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'CPF  ',
                      labelText: '                           CPF',
                      filled: true,
                      fillColor: Colors.grey[200],
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(0)),
                      counterText: '',
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Telefone celular:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Ex.: 83900112233',
                      labelText: '                  Ex.: 83900112233',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(0)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Bairro:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      value: valorDropdownBairro,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 14,
                        color: Colors.grey[700],
                      ),
                      onChanged: (novoValor) {
                        setState(() {
                          /*                 selectedItemBuilder:
                        (BuildContext context) {
                          return itensSexo.map<Widget>((String item) {
                            return Text(item);
                          }).toList();
                        }; */
                          valorDropdownBairro = novoValor!;
                        });
                      },
                      items: itensBairro
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Endereço:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Ex.: Rua Belarmino Freire Dias, 586',
                      labelText: '  Ex.: Rua Belarmino Freire Dias, 586',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(0)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black12),
                  ),
                  SizedBox(height: 40),
                  FloatingActionButton.extended(
                    onPressed: () {
                      // Add your onPressed code here!
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
            SizedBox(height: 45),
            TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 14,
                  color: Colors.grey[700],
                ),
                label: Text(
                  'Voltar',
                  style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                ))
          ],
        ),
      ),
    );
  }
}
