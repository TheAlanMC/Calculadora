import 'package:calculadora/cubit/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_result.dart';
import 'sub_result.dart';

class MathResult extends StatelessWidget {
  const MathResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorCubit, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(
              formula: state.formula + state.subtext,
              operation: state.operation,
            ),
            MainResult(text: state.text),
          ],
        );
      },
    );
  }
}
