import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {
  final String formula;
  final String operation;
  final String subtext;

  const SubResult(
      {Key? key,
      required this.formula,
      required this.operation,
      required this.subtext})
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
            formula + operation + subtext,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}
