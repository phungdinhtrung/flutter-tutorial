import 'package:flutter/material.dart';
import 'package:app_level4/config/constant.dart';
import 'package:app_level4/component/reusable/button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String textResult;
  final String interpretation;

  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.textResult,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Your Result',
                      style: textResultStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 10.0, bottom: 10.0),
                    color: activeCardColor,
                    child: Column(
                      children: <Widget>[
                        Text(
                          textResult,
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          bmiResult,
                          style: const TextStyle(
                            fontSize: 100.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          interpretation,
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ButtonOnBottom(
                  titleButton: 'RE-CALCULATE',
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
