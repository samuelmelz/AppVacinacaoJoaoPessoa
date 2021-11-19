import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacinacao/HomePage.dart';

import 'NaoConsigoEntrar.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  bool backSpace = false;
  int tamAntes = 0;

  final controllerDataNascimento = TextEditingController();
  final controllerCPF = TextEditingController();

  final controllerTap = ScrollController();

  final RegExp numRegExp = RegExp('[a-zA-Z]');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MesmoAppBar(),
      body: SingleChildScrollView(
        controller: controllerTap,
        child: IntrinsicHeight(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 70, left: 70, bottom: 10),
            child: Focus(
              onFocusChange: (focus) {
                if (focus) {
                  controllerTap.animateTo(
                      controllerTap.position.maxScrollExtent,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease);
                }
              },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 140),
                    Text(
                      'Informe seus dados para fazer login ou realizar o pré-cadastro',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onTap: () {
                        controllerTap.animateTo(
                            controllerTap.position.maxScrollExtent,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease);
                      },
                      cursorWidth: 1,
                      cursorColor: Colors.greenAccent[700],
                      controller: controllerCPF,
                      maxLength: 14,
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
                        hintText: 'CPF',
                        labelText: '                           CPF',
                        labelStyle: TextStyle(height: 1),
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
                    TextField(
                      cursorWidth: 1.2,
                      cursorColor: Colors.greenAccent[700],
                      onTap: () {
                        controllerTap.animateTo(
                            controllerTap.position.maxScrollExtent,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease);
                      },
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
                        hintText: 'Data de nascimento',
                        alignLabelWithHint: true,
                        labelText: '             Data de nascimento',
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
                    TextButton(
                        child: Text(
                          'NÃO CONSIGO ENTRAR',
                          style: TextStyle(
                              color: Colors.green[400],
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NaoConsigoEntrar()));
                        }),
                    SizedBox(height: 95),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      elevation: 0,
                      label: const Text(
                        'Iniciar',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      backgroundColor: Colors.green[400],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class MesmoAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.green[400]),
/*         title: Text(
          'João Pessoa',
          style: TextStyle(fontSize: 17),
        ), */
      automaticallyImplyLeading: false,
      backgroundColor: Colors.green[400],
      elevation: 0,
      toolbarHeight: 90,
      title: Container(
        padding: EdgeInsets.only(left: 30),
        width: 130,
        height: 130,
        child: Image.asset(
          'assets/images/logo-pmjp-color-horizontal.png',
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/facebookLogo.png',
            color: Colors.white,
            width: 17,
            height: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/twitterLogo.png',
            color: Colors.white,
            width: 19,
            height: 22,
          ),
        ),
        SizedBox(width: 1),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/instagramLogo.png',
            color: Colors.white,
            width: 19,
            height: 22,
          ),
        ),
        SizedBox(width: 3),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.subscriptions),
          color: Colors.white,
        ),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}
