import 'package:calculadora/cubit/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/num_button.dart';
import 'package:calculadora/widgets/math_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculatorCubit = context.read<CalculatorCubit>();
    return Scaffold(
        body: SafeArea(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    const MathResult(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: 'AC',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () => calculatorCubit.resetAll(),
                        ),
                        NumButton(
                          btnText: '+/-',
                          btnColor: Colors.grey,
                          txtColor: Colors.black,
                          onPressed: () =>
                              calculatorCubit.changeNegativePositive(),
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
                          onPressed: () => calculatorCubit.selectOperation('÷'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '7',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('7'),
                        ),
                        NumButton(
                          btnText: '8',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('8'),
                        ),
                        NumButton(
                          btnText: '9',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('9'),
                        ),
                        NumButton(
                          btnText: 'x',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCubit.selectOperation('x'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '4',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('4'),
                        ),
                        NumButton(
                          btnText: '5',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('5'),
                        ),
                        NumButton(
                          btnText: '6',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('6'),
                        ),
                        NumButton(
                          btnText: '-',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCubit.selectOperation('-'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumButton(
                          btnText: '1',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('1'),
                        ),
                        NumButton(
                          btnText: '2',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('2'),
                        ),
                        NumButton(
                          btnText: '3',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addNumber('3'),
                        ),
                        NumButton(
                          btnText: '+',
                          btnColor: Colors.orange,
                          onPressed: () => calculatorCubit.selectOperation('+'),
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
                          onPressed: () => calculatorCubit.addNumber('0'),
                        ),
                        NumButton(
                          btnText: '.',
                          btnColor: Colors.grey.shade700,
                          onPressed: () => calculatorCubit.addDecimalPoint(),
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
