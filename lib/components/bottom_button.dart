import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onPress, @required this.buttonTitle});

  final Function onPress;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeBottomTextStyle,
          ),
        ),
        color: kBottonConatinerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 15),
        width: double.infinity,
      ),
    );
  }
}
