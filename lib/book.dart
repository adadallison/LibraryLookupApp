import 'package:flutter/material.dart';
//import 'home2.dart';
import 'home.dart';
import 'nav.dart';
//Allison

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  descriptionPopUp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
              title: Text(
                  ' The Kite Runner is the first novel by Afghan-American author Khaled Hosseini. Published in 2003 by Riverhead Books, it tells the story of Amir a young boy from the Wazir Akbar Khan a district of Kabul. The story is set against a backdrop of tumultuous events,from the fall of Afghanistans monarchy through the Soviet invasion, the exodus of refugees to Pakistan and the United States, and the rise of the Taliban regime.Hosseini has commented that he considers The Kite Runner to be a father-son relationship story emphasizing the familial aspects of the narrative, an element that he continued to use in his later works. Themes of guilt and redemption feature prominently in the novel,with a pivotal scene depicting an act of sexual assault that happens against Hassan that Amir fails to prevent. The situation as a whole was the main reason why Amir and Hassans friendship ended. The latter half of the book centers on Amirs attempts to atone for this transgression by rescuing Hassans son two decades later.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )));
        });
  }

  checkoutPopUp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
              title: Text('Added to Cart!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )));
        });
  }

  wishlistPopUp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
              title: Text('Added to Wishlist!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )));
        });
  }

  Future navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnimatedSearchBar()));
  }

  @override
  Widget build(BuildContext context) {
    // Widget searchBar = const Padding(
    //   padding: EdgeInsets.all(32),
    //   child: Text(
    //     'lake, which warms to 20 degrees Celsius in the summer. Activities '
    //     'enjoyed here include rowing, and riding the summer toboggan run.',
    //     //softWrap: true,
    //   ),
    // );

    Widget titleRow = Container(
      margin: EdgeInsets.only(top: 20),
      child: Text(
        '"The Kite Runner" \n\nby Khaled Hosseini',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      alignment: Alignment.center,
    );

    Widget firstRow = Container(
      margin: EdgeInsets.only(top: 30),
      //padding: const EdgeInsets.all(27),
      color: Colors.transparent,
      child: Row(
        children: [
          Container(
            //margin: const EdgeInsets.only(left: 29),
            //padding: const EdgeInsets.only(right: 1, left: 1),
            width: 130,
            child: Image.asset('assets/kiterunner.jpg'),
            //textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
          ),
          Expanded(
            /*1*/
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {
                      checkoutPopUp(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD3E2F7),
                      padding: const EdgeInsets.all(20.0),
                      minimumSize: Size(10.0, 10.0),
                    ),
                    child: const Text('Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10.5,
                          color: Colors.black,
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0, left: 5),
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD3E2F7),
                      padding: const EdgeInsets.all(20.0),
                    ),
                    child: const Text('Reviews',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10.5,
                          color: Colors.black,
                        )),
                  ),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(20)),
                  //   color: const Color(0xFFE1F5FE),
                  // ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 5),
                  width: 90,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      wishlistPopUp(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD3E2F7),
                      padding: const EdgeInsets.all(20.0),
                      minimumSize: Size(10.0, 10.0),
                    ),
                    child: const Text('+ Wishlist',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10.5,
                          color: Colors.black,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    //Color color = Theme.of(context).primaryColor;

    Widget secondRow = Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 130, top: 10),
              //padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Description: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              //textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Color(0xFFD3E2F7), spreadRadius: 3),
                ],
              ),
              margin: const EdgeInsets.only(top: 9, left: 6),
              width: 220,
              height: 200,
              child: Scrollbar(
                  showTrackOnHover: true,
                  interactive: false,
                  thickness: 8,
                  child: SingleChildScrollView(
                      child: Text(
                    ' The Kite Runner is the first novel by Afghan-American author Khaled Hosseini. Published in 2003 by Riverhead Books, it tells the story of Amir a young boy from the Wazir Akbar Khan a district of Kabul. The story is set against a backdrop of tumultuous events,from the fall of Afghanistans monarchy through the Soviet invasion, the exodus of refugees to Pakistan and the United States, and the rise of the Taliban regime.Hosseini has commented that he considers The Kite Runner to be a father-son relationship story emphasizing the familial aspects of the narrative, an element that he continued to use in his later works. Themes of guilt and redemption feature prominently in the novel,with a pivotal scene depicting an act of sexual assault that happens against Hassan that Amir fails to prevent. The situation as a whole was the main reason why Amir and Hassans friendship ended. The latter half of the book centers on Amirs attempts to atone for this transgression by rescuing Hassans son two decades later.',
                  ))),
              // Text(
              //     ' The Kite Runner is the first novel by Afghan-American author Khaled Hosseini. Published in 2003 by Riverhead Books, it tells the story of Amir a young boy from the Wazir Akbar Khan a district of Kabul. The story is set against a backdrop of tumultuous events,from the fall of Afghanistans monarchy through the Soviet invasion, the exodus of refugees to Pakistan and the United States, and the rise of the Taliban regime.Hosseini has commented that he considers The Kite Runner to be a father-son relationship story emphasizing the familial aspects of the narrative, an element that he continued to use in his later works. Themes of guilt and redemption feature prominently in the novel,with a pivotal scene depicting an act of sexual assault that happens against Hassan that Amir fails to prevent. The situation as a whole was the main reason why Amir and Hassans friendship ended. The latter half of the book centers on Amirs attempts to atone for this transgression by rescuing Hassans son two decades later.',
              //     overflow: TextOverflow.fade,
              //     style: TextStyle(
              //       fontSize: 14,
              //       color: Colors.black,
              //     )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 8),
              width: 210,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFD3E2F7),
                  padding: const EdgeInsets.all(20.0),
                  minimumSize: Size(10.0, 10.0),
                ),
                child: const Text('Nearby Libraries',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    )),
              ),
            ),
          ],
        ),
      ],
    );

    return
        //MaterialApp( home:
        Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          titleRow,
          firstRow,
          secondRow,
        ],
      ),
    );
  }

  // Column _buildButtonColumn(Color color, IconData icon, String label) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Icon(icon, color: color),
  //       Container(
  //         margin: const EdgeInsets.only(top: 8),
  //         child: Text(
  //           label,
  //           style: TextStyle(
  //             fontSize: 12,
  //             fontWeight: FontWeight.w400,
  //             color: color,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

}
