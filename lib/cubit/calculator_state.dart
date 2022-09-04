part of 'calculator_cubit.dart';

class CalculatorState {
  final String formula;
  final String operation;
  final String subtext;
  final String text;
  final String result;
  final bool nuevaOperation;

  CalculatorState(
      {this.formula = ' ',
      this.operation = '',
      this.subtext = '',
      this.text = '0',
      this.result = ' ',
      this.nuevaOperation = true});
}
