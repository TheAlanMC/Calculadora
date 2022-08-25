import 'package:flutter/material.dart';

class MainResult extends StatelessWidget {
  final String text;
  const MainResult({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}