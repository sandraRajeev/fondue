import 'dart:async';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {  
  @override  
  SplashScreenState createState() => SplashScreenState();  
}  
class SplashScreenState extends State<MyHomePage> {  
  @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 4),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => Login()  
            )  
         )  
    );  
  }
@override  
  Widget build(BuildContext context) { 
    return Container(  
        child: Align(
                        child: Text('Fondue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                        color: Colors.white), textAlign: TextAlign.center,),
    )
    );  
  }  
}  

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
        body:Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10 , 100 , 10 , 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Does not have account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 20),),
                          onPressed: () {
                        },
                      ),
                      Text(''),
                      FlatButton(
                        textColor: Colors.white,
                        child: Text(
                          '\n\n\nSkip for now',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),),
                          onPressed: () {
                        },
                      ),
                      ]
                  ),
                  ),
                  ]
            ),),
    );
  } 
}