import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import '../widgets/num_button.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    SubResult(text: "99 X 99"),
                    MainResult(text: "81"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: "AC",
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                        ),
                        NumButton(
                          btnText: "+/-",
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                        ),
                        NumButton(
                          btnText: "⌫",
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                        ),
                        NumButton(btnText: "÷", btnColor: Colors.orange),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumButton(btnText: "7", btnColor: Color(0xff303030)),
                        NumButton(btnText: "8", btnColor: Color(0xff303030)),
                        NumButton(btnText: "9", btnColor: Color(0xff303030)),
                        NumButton(btnText: "X", btnColor: Colors.orange),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumButton(btnText: "4", btnColor: Color(0xff303030)),
                        NumButton(btnText: "5", btnColor: Color(0xff303030)),
                        NumButton(btnText: "6", btnColor: Color(0xff303030)),
                        NumButton(btnText: "-", btnColor: Colors.orange),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumButton(btnText: "1", btnColor: Color(0xff303030)),
                        NumButton(btnText: "2", btnColor: Color(0xff303030)),
                        NumButton(btnText: "3", btnColor: Color(0xff303030)),
                        NumButton(btnText: "+", btnColor: Colors.orange),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumButton(
                            btnText: "0",
                            btnColor: Color(0xff303030),
                            big: true),
                        NumButton(btnText: ".", btnColor: Color(0xff303030)),
                        NumButton(btnText: "=", btnColor: Colors.orange),
                      ],
                    ),
                  ],
                ))));
  }
}
