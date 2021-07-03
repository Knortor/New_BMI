import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'reusableColumn.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}
// TODO: check the commit or update project is enough

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleColourCard = inactiveButtonColor;
  // Color femaleColourCard = inactiveButtonColor;

  Gender selectedGender;
  int height = 180;

  // void notPressed(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleColourCard == inactiveButtonColor) {
  //       maleColourCard = activeButtonColor;
  //       femaleColourCard = inactiveButtonColor;
  //     } else {
  //       maleColourCard = inactiveButtonColor;
  //     }
  //   }
  //   if (selectedGender == Gender.female) {
  //     if (femaleColourCard == inactiveButtonColor) {
  //       femaleColourCard = activeButtonColor;
  //       maleColourCard = inactiveButtonColor;
  //     } else {
  //       femaleColourCard = inactiveButtonColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveButtonColor
                        : kInactiveButtonColor,
                    cardChild: ReusableColumn(
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveButtonColor
                        : kInactiveButtonColor,
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
            child: ReusableCard(
              colour: kActiveButtonColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kText_Style,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kText_Style,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 13.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 24.0),
                      thumbColor: Color(0xFFEB1555),
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.white,
                      trackHeight: 1.0,
                      overlayColor: Color(0x40EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newRating) {
                        setState(() {
                          height = newRating.round();
                        });
                      },
                      min: 120.0,
                      max: 230.0,
                    ),
                  ),

                  // TODO: Slider here
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: kActiveButtonColor),
                ),
                Expanded(
                  child: ReusableCard(colour: kActiveButtonColor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomColorContainer,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
