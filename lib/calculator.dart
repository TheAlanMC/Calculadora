// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'numButton.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key, required String title}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculadora"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      text,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumButton(btnText: "C", btnColor: Colors.grey),
                  NumButton(btnText: "⌫", btnColor: Colors.grey),
                  NumButton(btnText: "%", btnColor: Colors.grey),
                  NumButton(btnText: "/", btnColor: Colors.orange),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumButton(btnText: "7", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "8", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "9", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "x", btnColor: Colors.orange),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumButton(btnText: "4", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "5", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "6", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "-", btnColor: Colors.orange),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumButton(btnText: "1", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "2", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "3", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "+", btnColor: Colors.orange),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(), primary: (Colors.grey[850])),
                  ),
                  NumButton(btnText: ".", btnColor: (Colors.grey[850])!),
                  NumButton(btnText: "=", btnColor: Colors.orange),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }

  //logic
  int firstNumber = 0;
  int secondNumber = 0;
  String result = "";
  String text = "";
  String operation = "";

  void calculate(String btnText) {
    if (btnText == "C") {
      result = "";
      text = "";
      firstNumber = 0;
      secondNumber = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      firstNumber = int.parse(text);
      result = "";
      operation = btnText;
    } else if (btnText == "=") {
      secondNumber = int.parse(text);
      if (operation == "+") {
        result = (firstNumber + secondNumber).toString();
      }
      if (operation == "-") {
        result = (firstNumber - secondNumber).toString();
      }
      if (operation == "x") {
        result = (firstNumber * secondNumber).toString();
      }
      if (operation == "/") {
        result = (firstNumber / secondNumber).toString();
      }
    } else {
      result = int.parse(text + btnText).toString();
    }

    setState(() {
      text = result;
    });
  }
}
