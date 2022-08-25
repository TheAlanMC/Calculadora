import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {
  final String firstNumber;
  final String secondNumber;
  final String operation;

  const SubResult(
      {Key? key,
      required this.firstNumber,
      required this.secondNumber,
      required this.operation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            firstNumber + operation + secondNumber,
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
