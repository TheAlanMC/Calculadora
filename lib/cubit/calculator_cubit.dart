import 'package:bloc/bloc.dart';
part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState());

  void addNumber(String number) {
    final String newAddNumber;
    if (state.text == '0') {
      newAddNumber = number;
    } else if (state.text == '-0') {
      newAddNumber = '-' + number;
    } else {
      newAddNumber = state.text + number;
    }

    emit(CalculatorState(
        formula: state.formula,
        operation: state.operation,
        subtext: newAddNumber,
        text: newAddNumber));
  }
}
