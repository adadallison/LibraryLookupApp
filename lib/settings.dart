import 'package:app642/login.dart';
import 'package:app642/enrollmain.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'checkout.dart';
import 'reviews.dart';
//Minseon

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Library Lookup"),
      //   backgroundColor: Color(0xFF112D4E),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "My Account",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF112D4E),
                fontSize: 28),
          ),

          // Column(
          //   children: <Widget>[
          //     _buildButtonColumn("Account Information"),
          //     _buildButtonColumn(" Books Checked out "),
          //     _buildButtonColumn("      Your Reviews      ")
          //   ],
          // ),
          Container(
            width: 280,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (BuildContext context, _, __) =>
                        signuplogin()));
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Color(0xFFD3E2F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 3.0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Account Info',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            width: 280,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (BuildContext context, _, __) =>
                        checkoutpage()));
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Color(0xFFD3E2F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 3.0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Books Checked Out',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            width: 280,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (BuildContext context, _, __) => reviews()));
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Color(0xFFD3E2F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 3.0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Your Reviews',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Container(),
          const Text(
            "Community",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF112D4E),
                fontSize: 28),
          ),
          _buildButtonColumn("  Lend Your Books  "),
          const Text(
            "Support",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF112D4E),
                fontSize: 28),
          ),
          _buildButtonColumn("          Get Help          "),
        ],
      ),
    );
  }

  Column _buildButtonColumn(
    String text,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black,
            primary: Color(0xFFD3E2F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 3.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
