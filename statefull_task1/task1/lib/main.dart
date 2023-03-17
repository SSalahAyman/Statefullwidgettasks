import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => salahState();
}

class salahState extends State<home> {
  int value = 0;
  String valueinstring = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    value--;
                    if (value <= 0) {
                      valueinstring = "0";
                      value = 0;
                    } else if (value == 2) {
                      valueinstring = "two";
                    } else if (value == 4) {
                      valueinstring = "four";
                    } else if (value == 6) {
                      valueinstring = "six";
                    } else if (value == 8) {
                      valueinstring = "eight";
                    } else if (value == 10) {
                      valueinstring = "ten";
                    } else {
                      valueinstring = value.toString();
                    }
                  });
                },
                icon: Icon(Icons.exposure_minus_1)),
            Text(
              valueinstring,
              style: TextStyle(fontSize: 24),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    value++;
                    if (value == 2) {
                      valueinstring = "two";
                    } else if (value == 4) {
                      valueinstring = "four";
                    } else if (value == 6) {
                      valueinstring = "six";
                    } else if (value == 8) {
                      valueinstring = "eight";
                    } else if (value >= 10) {
                      valueinstring = "ten";
                      value = 10;
                    } else {
                      valueinstring = value.toString();
                    }
                  });
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  setState(() {
                    value = 0;
                  });
                },
                icon: Icon(Icons.exposure_zero)),
          ],
        ),
      ),
    );
  }
}
