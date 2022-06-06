import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Drawer(
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
            accountName: Text("Akshay"),
            accountEmail: Text("x0akshay@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://wallpapercave.com/dwp1x/wp1865023.jpg"),
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
    );
  }
}
