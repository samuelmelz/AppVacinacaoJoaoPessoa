import 'package:flutter/material.dart';

import 'EditarCadastroDN.dart';
import 'Cadastrar.dart';
import 'Login.dart';
import 'LocaisVacinacao.dart';
import 'AgendarVacina.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final RegExp numRegExp = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MesmoAppBar(),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 20, left: 40, bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '  Bem-vindo(a),',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '  Roberto Bolaños',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 11, right: 30),
                    child: Divider(thickness: 1.3),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditarCadastroDN()));
                          },
                          icon: Text(
                            'EDITAR CADASTRO',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          label: Icon(
                            Icons.mode_edit_outline,
                            size: 18,
                            color: Colors.green[400],
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Text(
                            'NOTIFICAÇÕES',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          label: Icon(
                            Icons.notifications_active,
                            size: 18,
                            color: Colors.green[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 13, right: 0, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                    elevation: 0,
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 30, bottom: 30),
                  ),
                  label: Icon(
                    Icons.date_range,
                    color: Colors.green[500],
                    size: 40,
                  ),
                  icon: Text(
                    'Agendar vacina                        ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AgendarVacina()));
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                    elevation: 0,
                    padding: EdgeInsets.only(
                        left: 10, right: 13, top: 30, bottom: 30),
                  ),
                  label: Icon(
                    Icons.pin_drop,
                    color: Colors.green[500],
                    size: 40,
                  ),
                  icon: Text(
                    'Locais de vacinação                ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocaisVacinacao()));
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                    elevation: 0,
                    padding: EdgeInsets.only(
                        left: 10, right: 13, top: 30, bottom: 30),
                  ),
                  label: Icon(
                    Icons.equalizer,
                    color: Colors.green[500],
                    size: 40,
                  ),
                  icon: Text(
                    'Estatísticas                               ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cadastrar()));
                  },
                ),
                SizedBox(height: 9),
              ],
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            icon: Text(
              'Sair',
              style: TextStyle(fontSize: 17, color: Colors.grey[500]),
            ),
            label: Icon(
              Icons.exit_to_app_sharp,
              size: 16,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
