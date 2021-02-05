import 'package:bmi_calculator/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage( {@required this.bmiResult,@required this.interpolation,@required this.textResult});
  final String bmiResult;
  final String textResult;
  final String interpolation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Text(
                'YOUR RESULT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textResult.toUpperCase(),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(interpolation,
                  style: TextStyle(fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  ),textAlign: TextAlign.center,),
                ],
              ),
              colour: Color(0xFF1D1E33),
            ),
          ),
          ButtonBottom(
            text: 'RE-CALCULATE',
            onTap:()=> Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
