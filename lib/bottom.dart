// ignore_for_file: unnecessary_new, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:first_app/Pages/cartpage.dart';
import 'package:first_app/first.dart';
import 'package:first_app/second.dart';
import 'package:first_app/third.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //defferent pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue[400],
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        fixedColor: Colors.redAccent[400],
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.slow_motion_video_sharp),
          //   title: Text('Reels'),
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite_outline_sharp),
          //   title: Text('Activity'),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
        ],
      ),
      // body is the majority of the screen.
      body: _children[_selectedIndex],
      // const body(),
    );
  }
}
