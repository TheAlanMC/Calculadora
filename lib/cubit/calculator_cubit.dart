import 'package:bloc/bloc.dart';
part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState());

  void resetAll() {
    emit(CalculatorState());
  }

  void addNumber(String number) {
    final String newNumber;
    if (!state.nuevaOperation) {
      CalculatorState();
    }
    if (state.text == '0') {
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
      CalculatorState();
    }
    if (!state.text.contains('.')) {
      if (state.text.startsWith('0')) {
        newNumber = '0.';
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
    String newOperation, newFormula;
    if (state.text == '0' || state.text == '-0') {
      newFormula = state.formula;
    } else {
      newFormula = state.operation.isEmpty
          ? state.formula + state.text
          : state.formula + state.operation + state.text;
    }
    newOperation = operation;
    emit(CalculatorState(
      formula: newFormula,
      operation: newOperation,
    ));
  }
}
