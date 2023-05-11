import 'package:bmi_calculator/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {

  final String resultCategory;
  final String resultBMI;
  final String resultDescription;

  ResultsPage({required this.resultCategory, required this.resultBMI, required this.resultDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 15.0,
            ),
            child: Text(
              'Your Result',
              style: kDisplayTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultCategory,
                      style: kHiglightTextStyle.copyWith(
                        color: kResultColor,
                      ),
                    ),
                    Text(
                      resultBMI,
                      style: kBiggerNumberTextStyle,
                    ),
                    Text(
                      resultDescription,
                      style: kStandardTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onPressed: () => Navigator.pop(context),
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
