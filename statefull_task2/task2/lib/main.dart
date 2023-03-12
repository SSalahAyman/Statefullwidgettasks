import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  String message = "hisalah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        message = message + " , hi salah";
                      });
                    },
                    child: Text("hi salah"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        message = message + " , welcome amgad";
                      });
                    },
                    child: Text("welcome amgad"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        message = message + " , fuck you lefta";
                      });
                    },
                    child: Text("fuck you lefta"),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    message = "hi salah";
                  });
                },
                child: Text("reset"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
