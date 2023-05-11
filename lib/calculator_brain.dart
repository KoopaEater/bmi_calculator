import 'dart:math';

class CalculatorBrain {

  final int height;
  final int weight;

  double _bmi = 0;

  CalculatorBrain({required this.height, required this.weight}) {

    _bmi = weight / pow(height/100, 2);

  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getCategory() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'Eat less plz...';
    } else if (_bmi > 18.5) {
      return 'You look snazzy';
    } else {
      return 'Eat more plz...';
    }
  }

}