import 'package:bloc/bloc.dart';
import 'package:math_expressions/math_expressions.dart';
part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState());

  void resetAll() {
    emit(CalculatorState());
  }

  void addNumber(String number) {
    final String newNumber;
    if (!state.nuevaOperation) {
      emit(CalculatorState());
    }
    if (state.text.isEmpty || state.text == '0') {
      newNumber = number;
    } else if (state.text == '-0') {
      newNumber = '-' + number;
    } else {
      newNumber = state.text + number;
    }
    emit(CalculatorState(
        formula: state.formula,
        operation: state.operation,
        subtext: newNumber,
        text: newNumber));
  }

  void changeNegativePositive() {
    final String newNumber;
    if (state.text.startsWith('-')) {
      newNumber = state.text.replaceFirst('-', '');
    } else {
      newNumber = '-' + state.text;
    }
    emit(CalculatorState(
        formula: state.formula,
        operation: state.operation,
        subtext: newNumber,
        text: newNumber));
  }

  void addDecimalPoint() {
    final String newNumber;
    if (!state.nuevaOperation) {
      emit(CalculatorState());
    }
    if (!state.text.contains('.')) {
      if (state.text.startsWith('0') || state.text.isEmpty) {
        newNumber = '0.';
      } else if (state.text == '-') {
        newNumber = '-0.';
      } else {
        newNumber = state.text + '.';
      }
    } else {
      newNumber = state.text;
    }
    emit(CalculatorState(
        formula: state.formula,
        operation: state.operation,
        subtext: newNumber,
        text: newNumber));
  }

  void selectOperation(String operation) {
    String newOperation = state.operation,
        newFormula = state.formula,
        newNumber = '';
    if (state.subtext.isNotEmpty && !state.subtext.endsWith('-')) {
      newFormula = state.formula + state.operation + state.text;
      newOperation = operation;
      if (state.operation.isNotEmpty) {
        newNumber = _mathOperation(newFormula);
      }
    } else if (state.formula.isNotEmpty) {
      newOperation = operation;
    }
    emit(CalculatorState(
      formula: newFormula,
      operation: newOperation,
      text: newNumber,
    ));
  }

  void deleteLastEntry() {
    final String newFormula, newOperation, newSubNumber, newNumber;
    if (state.subtext.isEmpty) {
      newFormula = ' ';
      newOperation = '';
      newSubNumber = '';
      newNumber = '0';
    } else if (state.text.replaceAll('-', '').length > 1) {
      newFormula = state.formula;
      newOperation = state.operation;
      newSubNumber = state.text.substring(0, state.text.length - 1);
      newNumber = state.text.substring(0, state.text.length - 1);
    } else {
      newFormula = state.formula;
      newOperation = state.operation;
      newSubNumber = '';
      newNumber = '0';
    }
    emit(CalculatorState(
      formula: newFormula,
      operation: newOperation,
      subtext: newSubNumber,
      text: newNumber,
    ));
  }

  void calculateResult() {
    if (state.subtext.isNotEmpty && !state.subtext.endsWith('-')) {
      String finalFormula = state.formula + state.operation + state.text;
      String result = _mathOperation(finalFormula);
      String formula = result == 'Infinity' ? '' : result;
      emit(CalculatorState(
          formula: formula,
          operation: '',
          subtext: '',
          text: ' ',
          result: result,
          nuevaOperation: false));
    }
  }

  String _mathOperation(String finalFormula) {
    finalFormula = state.formula + state.operation + state.text;
    finalFormula = finalFormula.replaceAll('x', '*');
    finalFormula = finalFormula.replaceAll('÷', '/');
    Parser p = Parser();
    Expression exp = p.parse(finalFormula);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    String result = eval.toString();
    if (result.endsWith('.0')) {
      result = result.substring(0, result.length - 2);
    }
    return result;
  }
}
