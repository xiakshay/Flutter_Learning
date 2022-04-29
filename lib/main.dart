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
          color: Color.fromARGB(255, 95, 212, 140),
          height: 100,
          width: 100,
          child: Text("Hi! Developers"),
        ),
      ),
    );
  }
}
