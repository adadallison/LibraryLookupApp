import 'dart:ui';
import 'package:flutter/material.dart';
//Yunhao

class Books {
  String name;
  String author;
  String pages;

  Books({
    required this.name,
    required this.author,
    required this.pages,
  });
}

class wishListPage extends StatefulWidget {
  @override
  wishListPageState createState() => wishListPageState();
}

class wishListPageState extends State<wishListPage> {
  @override
  List<Books> books = [
    Books(
        name: "Kite Runner", author: "by Khaled Hosseini", pages: '371 pages'),
    Books(name: "The Alchemist", author: "by Paulo Coelho", pages: '163 pages'),
    Books(
        name: "The Confident Woman",
        author: "by Joyce Meyer",
        pages: '365 pages'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        //appBar: AppBar(),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 10),
              child: Text(
                'Wishlist',
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
                            padding: const EdgeInsets.only(top: 82, left: 15),
                            child: Text(books[index].pages,
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                    fontSize: 12))),
                        Padding(
                            padding: const EdgeInsets.only(top: 51, left: 235),
                            child: MaterialButton(
                                minWidth: 100,
                                height: 45,
                                color: Color(0xFFD3E2F7),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                onPressed: () {
                                  setState(() {
                                    books.removeAt(index);
                                  });
                                },
                                child: Text("Delete",
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
