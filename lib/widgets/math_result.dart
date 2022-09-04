import 'package:flutter/material.dart';
import 'main_result.dart';
import 'sub_result.dart';

class MathResult extends StatelessWidget {
  const MathResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SubResult(
          formula: '',
          operation: '',
        ),
        MainResult(result: '0'),
      ],
    );
  }
}
