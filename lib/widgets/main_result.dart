import 'package:flutter/material.dart';

class MainResult extends StatelessWidget {
  final String result;
  const MainResult({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            result,
            style: const TextStyle(fontSize: 50),
          ),
        ));
  }
}
