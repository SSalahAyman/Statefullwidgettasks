import 'package:flutter/material.dart';

void main() {
  runApp(const task2());
}

class task2 extends StatelessWidget {
  const task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Statefulltask2(),
    );
  }
}

class Statefulltask2 extends StatefulWidget {
  const Statefulltask2({super.key});

  @override
  State<Statefulltask2> createState() => _Statefulltask2State();
}

class _Statefulltask2State extends State<Statefulltask2> {
  int value = 1;
  String stringvalue = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            stringvalue,
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      value *= 2;
                      if (value >= 100) {
                        value = 100;
                        stringvalue = "value become more than 100";
                      } else if (value < 100 && value > 0) {
                        stringvalue = value.toString();
                      }
                    },
                  );
                },
                child: Text("*2"),
              ),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      value *= 3;
                      if (value >= 100) {
                        value = 100;
                        stringvalue = "value become more than 100";
                      } else if (value < 100 && value > 0) {
                        stringvalue = value.toString();
                      }
                    },
                  );
                },
                child: Text("*3"),
              ),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      value *= 4;
                      if (value >= 100) {
                        value = 100;
                        stringvalue = "value become more than 100";
                      } else if (value < 100 && value > 0) {
                        stringvalue = value.toString();
                      }
                    },
                  );
                },
                child: Text("*4"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      value ~/= 2;
                      if (value <= 0) {
                        value = 1;
                        stringvalue = "value become less than 100";
                      } else if (value < 100 && value > 0) {
                        stringvalue = value.toString();
                      }
                    },
                  );
                },
                child: Text("/2"),
              ),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      value ~/= 3;
                      if (value <= 0) {
                        value = 1;
                        stringvalue = "value become less than 100";
                      } else if (value < 100 && value > 0) {
                        stringvalue = value.toString();
                      }
                    },
                  );
                },
                child: Text("/3"),
              ),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      value ~/= 4;
                      if (value <= 0) {
                        value = 1;
                        stringvalue = "value become less than 100";
                      } else if (value < 100 && value > 0) {
                        stringvalue = value.toString();
                      }
                    },
                  );
                },
                child: Text("/4"),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                stringvalue = "1";
                value = 1;
              });
            },
            child: Text("Reset"),
          )
        ],
      ),
    );
  }
}
