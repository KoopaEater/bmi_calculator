import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final Function? onPressed;

  ReusableCard({required this.color, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed?.call(),
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData? icon;

  RoundIconButton({required this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kButtonColor,
    );
  }
}

class BottomButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String? text;

  BottomButton({required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            text == null ? '' : text.toString(),
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

