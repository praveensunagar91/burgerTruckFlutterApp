

import 'package:flutter/material.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:  Padding(
        padding: EdgeInsets.only(left:60.0),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            CircleAvatar(

              radius: 90,

              backgroundImage: AssetImage('images/maxx.jpg'),
            ),

            SizedBox(height: 30,),
            Text("Praveen Sunagar",
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.black,
                fontFamily: 'Noto',
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 15,),
            Text('Web and Android developer',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Noto',
                color: Colors.black,
              ),),

            SizedBox(height: 20,),





          ],

        ),

      ),

    );


  }
}
