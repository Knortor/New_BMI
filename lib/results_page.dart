import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

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
                    'NORMAL',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    '19.2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80.0,
                    ),
                  ),
                  Text(
                    'You have a normal body weight. \nGood job!',
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
