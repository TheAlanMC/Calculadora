import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {
  final String formula;
  final String operation;

  const SubResult({Key? key, required this.formula, required this.operation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.only(bottom: 30),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            formula + operation,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}
