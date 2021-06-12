import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'reusableColumn.dart';

const bottomContainerHeight = 80.0;
const activeButtonColor = Color(0xFF1D1E33);
const inactiveButtonColor = Color(0xFF111328);
const bottomColorContainer = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // void notPressed() {
  //   if (buttonColors == 0xFF1D1E33) {
  //   } else {}
  // }

  /// just wanting to commit something to GitHub to see if it updates there :)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("I'm pressed");
                    },
                    child: ReusableCard(
                      colour: inactiveButtonColor,
                      cardChild: ReusableColumn(
                        icon: FontAwesomeIcons.mars,
                        text: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactiveButtonColor,
                    cardChild: ReusableColumn(
                      icon: FontAwesomeIcons.venus,
                      text: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeButtonColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeButtonColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeButtonColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColorContainer,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
