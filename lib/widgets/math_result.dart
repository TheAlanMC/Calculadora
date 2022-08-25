import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_result.dart';
import 'sub_result.dart';

class MathResult extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();
  MathResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(
              firstNumber: '${calculatorCtrl.firstNumber}',
              secondNumber: '${calculatorCtrl.secondNumber}',
              operation: '${calculatorCtrl.operation}',
            ),
            MainResult(text: '${calculatorCtrl.mathResult}'),
          ],
        ));
  }
}
