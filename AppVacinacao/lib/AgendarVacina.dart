import 'package:flutter/material.dart';
import 'package:vacinacao/Login.dart';

class AgendarVacina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AgendarVacinaState();
  }
}

class AgendarVacinaState extends State<AgendarVacina> {
  final RegExp numRegExp = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MesmoAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 60, left: 50, bottom: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, left: 7, right: 5, bottom: 5),
                height: 110,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.green[400]!,
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "PÚBLICO ALVO ATUAL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "13/11/2021 - 1° Dose 12+ | 2° Dose: AstraZeneca/CoronaVac/Pfizer | 3° Dose",
                        maxLines: 4,
                        style: TextStyle(
                            color: Colors.green[400],
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              SizedBox(height: 5),
              Text(
                'Roberto Gomes Bolanõs',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.green[400]),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Icon(Icons.date_range, size: 20, color: Colors.green[400]),
                  Text(
                    "   Escolha uma data disponível:",
                    style: TextStyle(
                        fontSize: 20, color: Colors.green[400], height: 1),
                  )
                ],
              ),
              SizedBox(height: 5),
              Text(
                'Nesse momento, não possuímos vagas para seu agendamento ou não chegou sua vez para vacinação',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 195),
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
            ]),
      ),
    );
  }
}
