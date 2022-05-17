// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageURL = "https://app.znaplink.com/uploads/avatars/1625396940.png";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('Dipayan'),
                accountEmail: Text('dipayansarkar265482@gmail.com'),
                currentAccountPicture: Image.network(imageURL),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text('Home', style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.search, color: Colors.black),
              title: Text('Search', style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text('Settings', style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.black),
              title: Text('Help', style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.black),
              title: Text('Logout', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
