import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculator_bmi.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResults, this.bmiCategory, this.bmiAdvice});

  final String bmiResults;
  final String bmiCategory;
  final String bmiAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              colour: kActiveButtonColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiCategory,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    bmiResults,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80.0,
                    ),
                  ),
                  Text(
                    bmiAdvice,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: kBottomColorContainer,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
