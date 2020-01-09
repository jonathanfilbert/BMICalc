import 'package:flutter/material.dart';
import 'package:bmi_calc/GenderCard.dart';
import 'BoxComponent.dart';

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
    "weight": 0,
    "age": 0,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
                        Text("HEIGHT"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              chosenOption['height'].toInt().toString(),
                              style: TextStyle(
                                  fontSize: 50.0, fontWeight: FontWeight.bold),
                            ),
                            Text("cm"),
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
                  child: BoxComponent(
                    backgroundColor: inactiveColor,
                    child: Text("haha"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: BoxComponent(
                    backgroundColor: inactiveColor,
                    child: Text("haha"),
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50.0,
            color: Colors.pink,
            child: Center(
              child: Text(
                "SUBMIT",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
