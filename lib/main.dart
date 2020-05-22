

import 'package:flutter/material.dart';
import 'package:flutterburgertruck/pages/account.dart';
import 'package:flutterburgertruck/pages/branches.dart';
import 'package:flutterburgertruck/pages/home.dart';
import 'package:flutterburgertruck/pages/payment.dart';



void main()=> runApp(MyApp());

 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   int currentIndex=0;

   List<Widget> pages=[
     home(),
     payment(),
     branches(),
     account()

   ];

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         body: pages[currentIndex] ,
         bottomNavigationBar: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             backgroundColor: Colors.white,
             selectedItemColor: Colors.blue,
             currentIndex: currentIndex,
             elevation: 0.0,

             items: [

               BottomNavigationBarItem(
                 icon: Icon(Icons.home),
                 title: Text('Home'),

                 backgroundColor: Colors.black87,
               ),
               BottomNavigationBarItem(
                 icon: Icon(Icons.payment),
                 title: Text('Payment'),
                 backgroundColor: Colors.black87,
               ),
               BottomNavigationBarItem(
                 icon: Icon(Icons.business_center),
                 title: Text('Branches'),
                 backgroundColor: Colors.black87,
               ),

               BottomNavigationBarItem(
                 icon: Icon(Icons.person),
                 title: Text('About us'),
                 backgroundColor: Colors.black87,

               ),
             ],
             onTap: (Index){
               setState(() {
                 currentIndex=Index;
               });
             }
         ),
       ),
     );
   }

    ///bulid card
  }



