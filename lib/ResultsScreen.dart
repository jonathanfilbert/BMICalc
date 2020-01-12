import 'package:flutter/material.dart';

const Color inactiveColor = Color(0xFF1D1E33);
const Color activeColor = Colors.blue;

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                            "NORMAL",
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
                            "19.4",
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
                              "You have a normal body weight\n Good Job",
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
              onTap: () {},
              child: Container(
                color: Colors.pink,
                height: 50.0,
                child: Center(child: Text("ALL RIGHt")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
