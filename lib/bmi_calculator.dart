import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  double _bmi = 18.5;
  BMICalculator(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Well done!';
    } else {
      return 'You have a lower than normal boyd weight. You can eat a bit more.';
    }
  }
}
