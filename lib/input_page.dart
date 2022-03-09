import 'dart:ffi';
import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(activeCardColour),
                  ),
                  Expanded(
                    child: ReusableCard(activeCardColour),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(activeCardColour),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(activeCardColour),
                ),
                Expanded(
                  child: ReusableCard(activeCardColour),
                ),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard(@required this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
