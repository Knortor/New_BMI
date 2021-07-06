import 'dart:math';

class Calculator {
  Calculator({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi.toStringAsFixed(1));
    return _bmi.toStringAsFixed(1);
  }

  bmiCategory() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  bmiToDo() {
    if (_bmi >= 25) {
      return 'You fat little piggy, go train!!';
    } else if (_bmi >= 18.5) {
      return 'Gogo gadget six pack, woop woop.';
    } else {
      return 'WOOOOHOOOOW, you can eat whatever you want damn that should feel nice... but you should do it.';
    }
  }
}
