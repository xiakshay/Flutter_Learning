import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(5),
          alignment: Alignment.center,
          height: 100,
          width: 100,
          child: Text("Hi! Developers"),
          // color: Color.fromARGB(255, 95, 212, 140), // if there is decoration then you can't use styling part out of the decoration element
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 95, 212, 140),
              border: Border.all(
                  color: Color.fromARGB(255, 97, 95, 212), width: 5)),
        ),
      ),
    );
  }
}
