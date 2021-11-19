import 'package:flutter/material.dart';

import 'Login.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget(
      {Key? key, required this.title, bool? debugShowCheckedModeBanner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Login(),
    );
  }
}
