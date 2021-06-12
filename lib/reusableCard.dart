import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  // using this constructor you can specify colors for every new card
  // adding @required makes the property a required property

  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      margin: EdgeInsets.all(10.0),
    );
  }
}