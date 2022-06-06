import 'package:flutter/material.dart';
import 'package:flutterlearning/bgImage.dart';
import 'package:flutterlearning/drawer.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter App",
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get child => null;

  final TextEditingController _textEditingController =
      TextEditingController(); // here `_` is for privet values alse in normal condition it will be public
  final TextEditingController _nameEditingController =
      TextEditingController(); // here `_` is for privet values alse in normal condition it will be public
  final TextEditingController _emailEditingController =
      TextEditingController(); // here `_` is for privet values alse in normal condition it will be public

  var myText = "Change Me ...";
  var myName = "";
  var myEmail = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: SingleChildScrollView(
            child: Card(
          child: ChangeNameCard(
            myText: myText,
            myName: myName,
            myEmail: myEmail,
            textEditingController: _textEditingController,
            nameEditingController: _nameEditingController,
            emailEditingController: _emailEditingController,
          ),
        )),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = "Phone : " + _textEditingController.text;
            myName = "Name : " + _nameEditingController.text;
            myEmail = "Email : " + _emailEditingController.text;
            setState(() {});
          },
          child: const Icon(Icons.change_circle)),
    );
  }
}

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required this.myName,
    required this.myEmail,
    required TextEditingController textEditingController,
    required TextEditingController nameEditingController,
    required TextEditingController emailEditingController,
  })  : _textEditingController = textEditingController,
        _nameEditingController = nameEditingController,
        _emailEditingController = emailEditingController,
        super(key: key);

  final String myText, myName, myEmail;
  final TextEditingController _textEditingController;
  final TextEditingController _nameEditingController;
  final TextEditingController _emailEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          "First Pic",
          style: TextStyle(
            color: Color.fromARGB(255, 35, 141, 190),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const BackgroundImage(), // sent into another dart file i.e bgImages
        const SizedBox(height: 20),
        const Text(
          "Second Pic",
          style: TextStyle(
            color: Color.fromARGB(255, 35, 141, 190),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(
          "Assets/Images/img2.jpg",
          fit: BoxFit.cover,
          // width: 300,
        ),
        const Padding(
          padding: EdgeInsets.all(20),
        ),
        const SizedBox(height: 20),
        const Text(
          "Fill Here...",
          style: TextStyle(
            color: Color.fromARGB(255, 74, 88, 180),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          myText,
          style: const TextStyle(
            color: Color.fromARGB(255, 188, 77, 142),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          myName,
          style: const TextStyle(
            color: Color.fromARGB(255, 35, 79, 190),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          myEmail,
          style: const TextStyle(
            color: Color.fromARGB(255, 52, 45, 186),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _textEditingController,
          keyboardType: const TextInputType
              .numberWithOptions(), // change it accordangly on your needs
          decoration: const InputDecoration(
            hintText: "Enter Your Phone Number",
            labelText: "Phone",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _nameEditingController,
          // keyboardType: const TextInputType., // change it accordangly on your needs
          decoration: const InputDecoration(
            hintText: "Enter Your Name",
            labelText: "Name",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _emailEditingController,
          // keyboardType: const TextInputType., // change it accordangly on your needs
          decoration: const InputDecoration(
            hintText: "Enter Your Email",
            labelText: "Email",
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
