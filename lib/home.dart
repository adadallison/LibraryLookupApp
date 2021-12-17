import 'package:flutter/material.dart';
import 'book.dart';
//Allison

class AnimatedSearchBar extends StatefulWidget {
  @override
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  bool _folded = true;

  checkoutPopUp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            // title: Text('Library: Calabasas Library',
            //     style: TextStyle(
            //       fontSize: 14,
            //       color: Colors.black,
            //     ))
            content: BookApp(),
          );
        });
  }

  libPopUp(BuildContext context) {
    // set up the buttons
    Widget webButton = ElevatedButton(
      child: Text("Website"),
      onPressed: () {},
    );
    Widget callButton = ElevatedButton(
      child: Text("Call"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Sunset Library"),
      content: Text(
          "Hours: 9am-6pm \n\n1305 18th Ave, San Francisco, CA 94122  \n\n1.1 miles away"),
      actions: [
        callButton,
        webButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            libPopUp(context);
          }, // handle your image tap here
          child: Image.asset(
            'assets/applemap.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        AnimatedContainer(
            duration: Duration(milliseconds: 450),
            width: 240, //_folded ? 60 : 150,
            margin: EdgeInsets.only(left: 65, top: 23),
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFecf4fc),
              boxShadow: kElevationToShadow[9],
            ),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.only(left: 16),
                        child: !_folded
                            ? TextField(
                                onChanged: (text) {
                                  checkoutPopUp(context);
                                },
                                decoration: InputDecoration(
                                    hintText: 'Kite Runner',
                                    hintStyle:
                                        TextStyle(color: Colors.blue[300]),
                                    border: InputBorder.none))
                            : null)),
                AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(_folded ? 32 : 0),
                        topRight: Radius.circular(32),
                        bottomLeft: Radius.circular(_folded ? 32 : 0),
                        bottomRight: Radius.circular(32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all((13)),
                        child: Icon(
                          _folded ? Icons.search : Icons.close,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _folded = !_folded;
                        });
                      },
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
