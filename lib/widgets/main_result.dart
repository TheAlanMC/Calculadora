import 'package:flutter/material.dart';

class MainResult extends StatelessWidget {
  final String text, result;
  const MainResult({Key? key, required this.text, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Column(children: [
            Text(
              text,
              style: const TextStyle(fontSize: 50),
            ),
            Text(
              result,
              style: const TextStyle(fontSize: 60, color: Colors.orange),
            )
          ]),
        ));
  }
}
