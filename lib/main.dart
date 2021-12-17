import 'package:flutter/material.dart';
//import 'home2.dart';
import 'nav.dart';
//Allison

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Lookup',
      home: Nav(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Library Lookup'),
      //   ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _currentIndex,
      //     unselectedItemColor: Colors.white,
      //     selectedItemColor: Colors.lightBlue,
      //     backgroundColor: Color(0xFF182c4c),
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //         label: 'Wishlist',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.pending_outlined),
      //         label: 'Settings',
      //       ),
      //     ],
      //   ),
      //   body: ListView(
      //     children: [
      //       firstRow,
      //       secondRow,
      //     ],
      //   ),
      // ),
    );
  }
}
