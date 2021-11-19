import 'package:flutter/material.dart';

import 'Login.dart';

class LocaisVacinacao extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LocaisVacinacaoState();
  }
}

class LocaisVacinacaoState extends State<LocaisVacinacao> {
  final RegExp numRegExp = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MesmoAppBar(),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 5, left: 32, right: 32, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.pin_drop,
                          size: 21,
                          color: Colors.green[400],
                        ),
                      ),
                      TextSpan(
                        text: "   Locais de vacinação",
                        style:
                            TextStyle(fontSize: 21, color: Colors.green[400]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 70,
                  width: 310,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        size: 27,
                      ),
                      hintText: 'Pesquisar',
                      labelText: '                           Pesquisar',
                      labelStyle: TextStyle(
                        height: 1,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(0)),
                      counterText: '',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Center(
                child: Container(
                  width: 310,
                  height: 340,
                  child: ListView(children: <Widget>[
                    Container(
                      height: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          elevation: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Centro Cultural Tenente Lucena',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rua Josefa Taveira - Mangabeira',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8332147945',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          elevation: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Centro da Pessoa Idosa',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rua Ana Guedes Vasconcelos, S/N - Alt',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8332147945',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          elevation: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Centro Helena Holanda',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rua Bancário Francisco Mendes, 380 - P',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8332147945',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          elevation: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Centro da Pessoa Idosa',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rua Ana Guedes Vasconcelos, S/N - Alt',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8332147945',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          elevation: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Clube Cabo Branco',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rua Cel.Souza Lemos, S/N - Miramar',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8332147945',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[200],
                          elevation: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'CMI - Centro Municipal de Imuni...',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rua Rui Barbosa, S/N, Torre',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8332147945',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton.icon(
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
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
