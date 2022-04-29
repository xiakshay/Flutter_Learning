import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
