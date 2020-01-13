import 'package:flutter/material.dart';

const Color inactiveColor = Color(0xFF1D1E33);
const Color activeColor = Colors.blue;

class ResultScreen extends StatelessWidget {
  final double bmiResult;

  ResultScreen({this.bmiResult});

  String getResultInterpretation(double bmi) {
    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  @override
  Widget build(BuildContext context) {
    final ResultScreen bmiResult = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Your Result",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: double.infinity,
              height: 10.0,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: inactiveColor,
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: Text(
                              getResultInterpretation(bmiResult.bmiResult),
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              bmiResult.bmiResult.toStringAsFixed(2),
                              style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "You have a ${getResultInterpretation(bmiResult.bmiResult)} body weight.",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.pink,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "ALL RIGHT",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
