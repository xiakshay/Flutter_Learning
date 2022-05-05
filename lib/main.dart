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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Center(
          child: Card(
        child: Column(
          children: <Widget>[
            Image.asset("Assets/Images/img1.jpg"),
            Image.asset("Assets/Images/img2.jpg")
          ],
        ),
      )),
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
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
