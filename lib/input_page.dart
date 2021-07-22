import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardcolour = Color(0xFF1D1E33);
const bottonConatinerColor = Color(0xFFEB1555);

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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    childCard: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                    colour: activeCardcolour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    childCard: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    colour: activeCardcolour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardcolour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardcolour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardcolour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottonConatinerColor,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 15),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
