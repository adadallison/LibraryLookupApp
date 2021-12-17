import 'dart:ui';
import 'package:flutter/material.dart';
//Joe

class Books {
  String name;
  String author;

  Books({
    required this.name,
    required this.author,
  });
}

class checkoutpage extends StatefulWidget {
  @override
  checkoutState createState() => checkoutState();
}

class checkoutState extends State<checkoutpage> {
  @override
  List<Books> books = [
    Books(name: "The Lightning Thief", author: "by Rick Riordan"),
    Books(name: "The Fellowship of the Ring", author: "by J.R.R. Tolkien"),
  ];

  infoPopUp(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Checked Out Location: Sunset Library"),
      content: Text("Due Date: 12/6/2021"),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF082242),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        drawer: Drawer(),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 10),
              child: Text(
                'Books Checked Out',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF112D4E),
                    fontSize: 28),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                    decoration: new BoxDecoration(
                      border: Border.all(color: Color(0xFF112D4E)),
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(20),
                    height: 115,
                    child: Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 15, left: 15),
                            child: Text(books[index].name,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23))),
                        Padding(
                            padding: const EdgeInsets.only(top: 51, left: 15),
                            child: Text(books[index].author,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15))),
                        Padding(
                            padding: const EdgeInsets.only(top: 51, left: 235),
                            child: MaterialButton(
                                minWidth: 100,
                                height: 45,
                                color: Color(0xFFD3E2F7),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                onPressed: () {
                                  infoPopUp(context);
                                },
                                child: Text("More Info",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)))),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        )));
  }
}
