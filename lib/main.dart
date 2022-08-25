import 'package:flutter/material.dart';
import 'screens/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculadora',
        home: Calculator(),
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black));
  }
}
