import 'package:app642/home.dart';
import 'package:app642/settings.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'book.dart';
//import 'home2.dart';
import 'home.dart';
import 'settings.dart';
import 'wishlist.dart';
//Allison

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    wishListPage(),
    AnimatedSearchBar(),
    setting(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF182c4c),
      appBar: AppBar(
        title: Text('Library Lookup'),
        backgroundColor: Color(0xFF182c4c),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.lightBlue,
        backgroundColor: Color(0xFF182c4c),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_outlined),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
