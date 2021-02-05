

import 'dart:math';

class Calculator {
  Calculator({this.weight,this.heghit});
  final int heghit;
  final int weight;
   double _bmi;

  String bmiResult(){
    _bmi=weight/pow(heghit/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String textResult(){
    if(_bmi>=25)
      return 'OverWeight';
    if(_bmi>18.5)
      return 'Normal';
    else return 'UnderWeight';
  }
  String advice(){
    if(_bmi>=25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    if(_bmi>18.5)
      return 'You hav a normal body weight. Good job !';
    else return 'You have a lower than normal body weight. You can eat a bit more';
  }
}