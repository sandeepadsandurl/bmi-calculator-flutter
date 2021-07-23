import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have higher than normal body Weight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return 'You have normal body Weight. Good job! ';
    } else {
      return "You have lower than normal body Weight. You can eat a bit more.";
    }
  }
}
