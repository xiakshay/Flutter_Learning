import 'package:flutter/material.dart';

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

  TextEditingController _textEditingController =
      TextEditingController(); // here `_` is for privet values alse in normal condition it will be public

  var myText = "Change Me ...";

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
          child: Column(
            children: <Widget>[
              Image.asset(
                "Assets/Images/img1.jpg",
                fit: BoxFit.fitHeight,
                // width: 300,
              ),
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
                  color: Color.fromARGB(255, 132, 202, 97),
                  fontSize: 12,
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
              )
            ],
          ),
        )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            // DrawerHeader(
            //   child: Text(
            //     "Akshay Kumar",
            //     style: TextStyle(
            //       color: Colors.yellowAccent,
            //       fontSize: 20,
            //     ),
            //   ),
            //   decoration: BoxDecoration(color: Colors.indigo),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Akshay Kumar"),
              accountEmail: Text("x0akshay@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://wallpapercave.com/dwp1x/wp1865023.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Akshay"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("x0akshay@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Dockuments"),
              subtitle: Text("Important Files"),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Dockuments"),
              subtitle: Text("Important Files"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _textEditingController.text;
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
