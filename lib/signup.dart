import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {

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
                      labelText: 'Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10 , 10 , 10 , 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'mail-id',
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
              margin: EdgeInsets.fromLTRB(120, 20, 120, 20),  
              child: FlatButton(  
                child: Text('Sign Up', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {},  
              ),
                  ),  
                  ]
            ),),
    );
}
}