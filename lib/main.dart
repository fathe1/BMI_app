import 'package:flutter/material.dart';

import 'screen/bmi_calculator_screen.dart';
import 'screen/bmi_result_screen.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Result": (context) => Result(),
        "Calc": (context) => Calculator()
      },
      home: const Calculator(),
    );
  }
}
