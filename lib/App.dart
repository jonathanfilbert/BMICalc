import 'package:flutter/material.dart';
import 'package:bmi_calc/GenderCard.dart';
import 'BoxComponent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import "ResultsScreen.dart";

const Color inactiveColor = Color(0xFF1D1E33);
const Color activeColor = Colors.blue;

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool isMaleCardClicked = false;
  bool isFemaleCardClicked = false;
  Map<String, dynamic> chosenOption = {
    "gender": "",
    "height": 170,
    "weight": 70,
    "age": 18,
  };

  double calculateBMI(int weight, int height) {
    return (weight / pow((height / 100), 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Text(
                  "BMI Calculator",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    chosenOption['gender'] = "Male";
                    if (isMaleCardClicked) {
                      chosenOption['gender'] = "";
                    }
                    isMaleCardClicked = !isMaleCardClicked;
                    if (isFemaleCardClicked) {
                      isFemaleCardClicked = !isFemaleCardClicked;
                    }
                  });
                  print(chosenOption);
                },
                child: BoxComponent(
                  backgroundColor:
                      isMaleCardClicked ? activeColor : inactiveColor,
                  child: GenderCard(
                    gender: "male",
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    chosenOption['gender'] = "female";
                    if (isFemaleCardClicked) {
                      chosenOption['gender'] = "";
                    }
                    isFemaleCardClicked = !isFemaleCardClicked;
                    if (isMaleCardClicked) {
                      isMaleCardClicked = !isMaleCardClicked;
                    }
                  });
                  print(chosenOption);
                },
                child: BoxComponent(
                  backgroundColor:
                      isFemaleCardClicked ? activeColor : inactiveColor,
                  child: GenderCard(gender: 'female'),
                ),
              ),
            ),
          ],
        )),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  child: BoxComponent(
                    backgroundColor: inactiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '${chosenOption['height']}',
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Slider(
                          min: 0,
                          max: 300,
                          value: chosenOption['height'].toDouble(),
                          activeColor: Colors.pink,
                          inactiveColor: Colors.grey,
                          onChanged: (double newValue) {
                            int newval = newValue.toInt();
                            setState(() {
                              chosenOption['height'] = newval;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: BoxComponent(
                    backgroundColor: inactiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          chosenOption['weight'].toString(),
                          style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                          width: double.infinity,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  chosenOption['weight'] -= 1;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black12,
                                radius: 30.0,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  chosenOption['weight'] += 1;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black12,
                                radius: 30.0,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: BoxComponent(
                        backgroundColor: inactiveColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "AGE",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "${chosenOption['age']}",
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                              width: double.infinity,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      chosenOption['age'] -= 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black12,
                                    radius: 30.0,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      chosenOption['age'] += 1;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black12,
                                    radius: 30.0,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            double result =
                calculateBMI(chosenOption['weight'], chosenOption['height']);
            Navigator.pushNamed(context, "/result",
                arguments: ResultScreen(
                  bmiResult: result,
                ));
          },
          child: Container(
            height: 50.0,
            color: Colors.pink,
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
