import 'dart:ui';

import 'package:app642/login.dart';
import 'package:flutter/material.dart';
//import 'package:login_signup_screen/signup.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //backgroundColor: Colors.white,
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
      backgroundColor: Color(0xFF082242),
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,

          height: 600,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Container(
                height: 150,
                child: Image.asset(
                  'assets/welcome.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),

                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage("assets/welcome.jpg"))),
              ),
              //username
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),

                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Username'),
                ),
              ),
              //password
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),

                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password'),
                ),
              ),
              //confirm password
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),

                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),

                child: TextField(
                  //style: TextStyle(color: Colors.white),
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    fillColor: Colors.blue[50],
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  // creating the signup button
                  SizedBox(height: 10),
                  MaterialButton(
                    minWidth: 250,
                    height: 60,
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginPage()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
