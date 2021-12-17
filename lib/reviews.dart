import 'package:flutter/material.dart';

class reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Library Lookup"),
        backgroundColor: Color(0xFF112D4E),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 40,
          ),
          const Text(
            "My Reviews",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF112D4E),
                fontSize: 28),
          ),
          Container(
            height: 20,
          ),
          _reviews("Computer Science", "This book was really helpful"),
          _reviews("Computer Science", "This book was really helpful"),
          _reviews("Computer Science", "This book was really helpful"),
        ],
      ),
    );
  }
}

Card _reviews(String title, String contents) {
  return Card(
    child: ListTile(
      title: Text(title),
      tileColor: Colors.white70,
      subtitle: Text(contents),
    ),
  );
}
