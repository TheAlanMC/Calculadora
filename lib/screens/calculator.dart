import 'package:flutter/material.dart';
import 'package:calculadora/widgets/num_button.dart';
import 'package:calculadora/widgets/math_result.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    //  const MathResult(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: 'AC',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '+/-',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '⌫',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '÷',
                          btnColor: Colors.orange,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '7',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '8',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '9',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => {},
                        ),
                        NumButton(
                          btnText: 'x',
                          btnColor: Colors.orange,
                          onPressed: () => {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '4',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => {},
                        ),
                        NumButton(
                          btnText: '5',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '6',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '-',
                          btnColor: Colors.orange,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '1',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '2',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '3',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '+',
                          btnColor: Colors.orange,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '0',
                          btnColor: Colors.grey.shade700,
                          big: true,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '.',
                          btnColor: Colors.grey.shade700,
                          onPressed: () {},
                        ),
                        NumButton(
                          btnText: '=',
                          btnColor: Colors.orange,
                          onPressed: () => {},
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}
