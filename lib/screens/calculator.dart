import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculadora/widgets/num_button.dart';
import 'package:calculadora/widgets/math_result.dart';

class Calculator extends StatelessWidget {
  Calculator({Key? key}) : super(key: key);
  final calculatorCtrl = Get.put(CalculatorController());

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
                    MathResult(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: 'AC',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () => calculatorCtrl.resetAll(),
                        ),
                        NumButton(
                          btnText: '+/-',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () =>
                              calculatorCtrl.changeNegativePositive(),
                        ),
                        NumButton(
                          btnText: '⌫',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () => calculatorCtrl.deleteLastEntry(),
                        ),
                        NumButton(
                          btnText: '÷',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCtrl.selectOperation('÷'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '7',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('7'),
                        ),
                        NumButton(
                          btnText: '8',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('8'),
                        ),
                        NumButton(
                          btnText: '9',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('9'),
                        ),
                        NumButton(
                          btnText: 'x',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCtrl.selectOperation('x'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '4',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('4'),
                        ),
                        NumButton(
                          btnText: '5',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('5'),
                        ),
                        NumButton(
                          btnText: '6',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('6'),
                        ),
                        NumButton(
                          btnText: '-',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCtrl.selectOperation('-'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '1',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('1'),
                        ),
                        NumButton(
                          btnText: '2',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('2'),
                        ),
                        NumButton(
                          btnText: '3',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addNumber('3'),
                        ),
                        NumButton(
                          btnText: '+',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCtrl.selectOperation('+'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '0',
                          btnColor: Color(0xff303030),
                          big: true,
                          onPressed: () => calculatorCtrl.addNumber('0'),
                        ),
                        NumButton(
                          btnText: '.',
                          btnColor: Color(0xff303030),
                          onPressed: () => calculatorCtrl.addDecimalPoint(),
                        ),
                        NumButton(
                          btnText: '=',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCtrl.calculateResult(),
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}
