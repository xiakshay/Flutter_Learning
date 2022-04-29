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
          child: Center(child: Text("Hi! Developers")),
          color: Color.fromARGB(255, 68, 56, 101),
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
