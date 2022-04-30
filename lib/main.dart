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
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(5),
          alignment: Alignment.center,
          height: 100,
          width: 100,
          // color: Color.fromARGB(255, 95, 212, 140), // if there is decoration then you can't use styling part out of the decoration element
          decoration: BoxDecoration(
              // color: Color.fromARGB(255, 95, 212, 140),
              gradient: const LinearGradient(
                colors: [Colors.yellow, Colors.red],
              ), //gredient color to make it more colorful
              border: Border.all(
                  color: const Color.fromARGB(255, 97, 95, 212), width: 5),
              borderRadius: BorderRadius.circular(10),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Color.fromARGB(255, 133, 133, 133),
                  blurRadius: 10,
                  offset: Offset(2, 10),
                )
              ]),
          child: const Text(
            "Box",
            style: TextStyle(
              color: Color.fromARGB(245, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
