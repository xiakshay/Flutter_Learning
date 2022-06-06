import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
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
  // var name = "";
  // var dob = "";
  // var father = "";
  // var mother = "";
  // var mob = "";
  // var email = "";
  // var address = "";
  // var pinno = "";

  // final TextEditingController _nameEditingController = TextEditingController();
  // final TextEditingController _dobEditingController = TextEditingController();
  // final TextEditingController _fatherEditingController =
  //     TextEditingController();
  // final TextEditingController _motherEditingController =
  //     TextEditingController();
  // final TextEditingController _mobEditingController = TextEditingController();
  // final TextEditingController _emailEditingController = TextEditingController();
  // final TextEditingController _addressEditingController =
  //     TextEditingController();
  // final TextEditingController _pinnoEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Flutter Form"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Card(
            child: FillTheForm(
                // name = name,
                // dob = dob,
                // father = father,
                // mother = mother,
                // mob = mob,
                // email = email,
                // address = address,
                // pinno = pinno,
                // nameEditingController: _nameEditingController,
                // dobEditingController: _dobEditingController,
                // fatherEditingController: _fatherEditingController,
                // motherEditingController: _motherEditingController,
                // mobEditingController: _mobEditingController,
                // emailEditingController: _emailEditingController,
                // addressEditingController: _addressEditingController,
                // pinnoEditingController: _pinnoEditingController,
                ),
          ),
        ),
      ),
    );
  }
}

class FillTheForm extends StatelessWidget {
  // final String name, dob, father, mother, mob, email, address, pinno;
  // final TextEditingController _nameEditingController ;
  // final TextEditingController _dobEditingController ;
  // final TextEditingController _fatherEditingController ;
  // final TextEditingController _motherEditingController;
  // final TextEditingController _mobEditingController ;
  // final TextEditingController _emailEditingController ;
  // final TextEditingController _addressEditingController
  // final TextEditingController _pinnoEditingController ;

  const FillTheForm({
    Key? key,
    // required this.name,
    // required this.dob,
    // required this.father,
    // required this.mother,
    // required this.mob,
    // required this.email,
    // required this.address,
    // required this.pinno,
    // required TextEditingController nameEditingController,
    // required TextEditingController fatherEditingController,
    // required TextEditingController dobEditingController,
    // required TextEditingController mobEditingController,
    // required TextEditingController motherEditingController,
    // required TextEditingController emailEditingController,
    // required TextEditingController addressEditingController,
    // required TextEditingController pinnoEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text(
          "* Required",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 35, 141, 190),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Name",
            labelText: "Name",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          // keyboardType: TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            hintText: "Enter Your DOB",
            labelText: "DOB",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Father's Name",
            labelText: "Father's Name",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Your mother's Name",
            labelText: "Mother's Name",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          keyboardType: TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            hintText: "Enter Your mob",
            labelText: "Mob No",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Email",
            labelText: "Email",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Address",
            labelText: "Address",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          keyboardType: TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            hintText: "Enter Your Pin No.",
            labelText: "Pin No.",
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
