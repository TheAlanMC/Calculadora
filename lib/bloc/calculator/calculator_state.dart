part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorState {
  dispose();
}

class CalculatorInitial extends CalculatorState {
  var firstNumber = '0';
  var secondNumber = '';
  var mathResult = '0';
  var operation = '';
}
