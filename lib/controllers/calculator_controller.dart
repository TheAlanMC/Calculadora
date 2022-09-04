// import 'package:get/get.dart';

// class CalculatorController extends GetxController {
//   var firstNumber = '0'.obs;
//   var secondNumber = ''.obs;
//   var mathResult = '0'.obs;
//   var operation = ''.obs;
//   bool equal = false;

//   resetAll() {
//     firstNumber.value = '0';
//     secondNumber.value = '';
//     operation.value = '';
//     mathResult.value = '0';
//   }

//   addNumber(String number) {
//     if (equal) {
//       equal = false;
//       resetAll();
//     }
//     if (mathResult.value == '0') {
//       mathResult.value = number;
//     } else if (mathResult.value == '-0') {
//       mathResult.value = '-' + number;
//     } else {
//       mathResult.value = mathResult.value + number;
//     }
//     if (operation.value == '') {
//       firstNumber.value = mathResult.value;
//     } else {
//       secondNumber.value = mathResult.value;
//     }
//   }

//   changeNegativePositive() {
//     if (mathResult.value.isNum) {
//       equal = false;
//       if (mathResult.value.startsWith('-')) {
//         mathResult.value = mathResult.value.replaceFirst('-', '');
//       } else {
//         mathResult.value = '-' + mathResult.value;
//       }
//       if (operation.value == '') {
//         firstNumber.value = mathResult.value;
//       } else {
//         secondNumber.value = mathResult.value;
//       }
//     }
//   }

//   addDecimalPoint() {
//     if (equal) {
//       equal = false;
//       resetAll();
//     }
//     if (!mathResult.contains('.')) {
//       if (mathResult.startsWith('0')) {
//         mathResult.value = '0.';
//       } else {
//         mathResult.value = mathResult.value + '.';
//       }
//       if (operation.value == '') {
//         firstNumber.value = mathResult.value;
//       } else {
//         secondNumber.value = mathResult.value;
//       }
//     }
//   }

//   selectOperation(String newOperation) {
//     if (mathResult.value.isNum) {
//       equal = false;
//       if (operation.value == '') {
//         mathResult.value = '0';
//         secondNumber.value = '0';
//       } else if (secondNumber.value != '0') {
//         _mathOperation();
//         firstNumber.value = mathResult.value;
//         secondNumber.value = '0';
//         mathResult.value = '0';
//       }
//       operation.value = newOperation;
//     }
//   }

//   deleteLastEntry() {
//     if (!equal) {
//       if (mathResult.value.replaceAll('-', '').length > 1) {
//         mathResult.value =
//             mathResult.value.substring(0, mathResult.value.length - 1);
//       } else {
//         mathResult.value = '0';
//       }
//       if (operation.value != '' && secondNumber.value == '0') {
//         operation.value = '';
//         secondNumber.value = '';
//         mathResult.value = firstNumber.value;
//       }
//       if (operation.value == '') {
//         firstNumber.value = mathResult.value;
//       } else {
//         secondNumber.value = mathResult.value;
//       }
//     }
//   }

//   calculateResult() {
//     if (mathResult.value.isNum) {
//       equal = true;
//       _mathOperation();
//       firstNumber.value = mathResult.value;
//       secondNumber.value = '';
//       operation.value = '';
//     }
//   }

//   _mathOperation() {
//     double num1 = double.parse(firstNumber.value);
//     double num2 = double.parse(mathResult.value);
//     switch (operation.value) {
//       case '+':
//         mathResult.value = '${num1 + num2}';
//         break;
//       case '-':
//         mathResult.value = '${num1 - num2}';
//         break;
//       case 'x':
//         mathResult.value = '${num1 * num2}';
//         break;
//       case '÷':
//         if ((num1 / num2).isFinite) {
//           mathResult.value = '${num1 / num2}';
//         } else {
//           mathResult.value = 'Can\'t divide by zero';
//         }
//         break;
//       default:
//         return;
//     }
//     if (mathResult.value.endsWith('.0')) {
//       mathResult.value =
//           mathResult.value.substring(0, mathResult.value.length - 2);
//     }
//   }
// }
