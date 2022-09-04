import 'package:calculadora/cubit/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CalculatorCubit())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Calculadora',
          home: const Calculator(),
          theme:
              ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black)),
    );
  }
}
