import 'package:flutter/material.dart';



class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  int photoIndex=0;

  List<String> photos=[
    'images/burger1.jpg',
    'images/burger2.jpg',
    'images/burger3.jpg',
    'images/burger4.jpg',
    'images/firstburg.jpg',
    'images/burgfam.png',
    'images/chicken.jpg',
    'images/whoop.jpg',
    'images/snackbox.jpg',
    'images/chickburg.jpg',
    'images/grilled.jpg',
    'images/chickenfinger.jpg',
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(photos[photoIndex]),
                          fit: BoxFit.cover
                      )
                  ),

                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, color: Colors.white,),
                    Icon(Icons.favorite, color: Colors.pink,)
                  ],
                ),

                Positioned(
                  top: 210.0,
                  left: 8.0,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.white, size: 20.0,),
                      Icon(Icons.star, color: Colors.white, size: 20.0,),
                      Icon(Icons.star, color: Colors.white, size: 20.0,),
                      Icon(Icons.star, color: Colors.white, size: 20.0,),
                      SizedBox(width: 3.0,),
                      Text('4.5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),),
//                       SelectedPhoto(
//                           photoIndex: photoIndex, numberOfDots: photos.length)
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Text('Open now until  7pm',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontFamily: 'Noto',
                      fontWeight: FontWeight.w500,
                    ),),
                  SizedBox(height: 15.0),
                  Text('The Burger King',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontFamily: 'Noto',
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 15.0,),
                  Row(
                    children: <Widget>[
                      Text('17th st & Union Sq East',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Noto',
                            fontSize: 17.0
                        ),),
                      SizedBox(width: 3.0,),
                      Icon(Icons.location_on, size: 17.0, color: Colors.grey,),
                      SizedBox(width: 3.0,),
                      Text('400ft Away',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Noto',
                          color: Colors.grey,
                        ),)
                    ],
                  ),
                  SizedBox(height: 15.0),

                  Row(
                    children: <Widget>[
                      Icon(Icons.rss_feed, color: Colors.green, size: 20.0,),
                      SizedBox(width: 2.0,),
                      Text('Location confirmed by 3 users today',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Noto',
                          fontSize: 17.0,
                        ),),

                    ],
                  )


                ],
              ),
            ),

            SizedBox(height: 40.0,),

            Container(
              margin: EdgeInsets.only(left: 50.0, right: 290),
              height: 3.0,
              width: 3.0,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.0,
                        color: Colors.grey[300]
                    )
                  ]
              ),
            ),

            SizedBox(height: 25.0,),

            ///third section starts
            Container(

              margin: EdgeInsets.only(left: 50.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('FEATURED ITEMS',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Noto',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),),
                ],
              ),
            ),

            ///column section
            SizedBox(height: 20.0,),
            _buildListItem(photos[4],'Maple Mustard Tempeh','11.25'),
            SizedBox(height: 10,),
            _buildListItem(photos[5],'Family Bundle','12.99'),
            SizedBox(height: 10.0,),
            _buildListItem(photos[6],'Chicken Sandwich','4.99'),
            SizedBox(height: 10.0,),
            _buildListItem(photos[7],'Whooper Meal','5'),
            SizedBox(height: 10.0,),
            _buildListItem(photos[8],'Snack Box','3'),
            SizedBox(height: 10.0,),
            _buildListItem(photos[9],'Chicken Burger','4'),
            SizedBox(height: 10.0,),
            _buildListItem(photos[10],'Grilled Chicken','5'),
            SizedBox(height: 10.0,),
            _buildListItem(photos[11],'Chicken Finger','6'),


          ],
        ), /// body ends here



    );
  }

  ///selected photo

///
}

///build column

Widget _buildListItem(String image,String imgdesc,String price) {
  return Column(

    children: <Widget>[
       Container(
         child: Container(
           padding: EdgeInsets.only(left:5.0,right: 5.0),
           child: Row(

             children: <Widget>[
               Container(

                 height: 100.0,
                 width: 100.0,

                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),
                       bottomRight: Radius.circular(20.0)),
                   image: DecorationImage(
                       image: AssetImage(image) ,
                       fit: BoxFit.cover

                   ),
                 ),
               ),
               SizedBox(width: 20.0,),
               Flexible(
                 child: Container(
                         height: 100.0,

                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(imgdesc,
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 18.0,
                           fontWeight: FontWeight.bold,
                         ),),
                       SizedBox(height: 5.0,),
                       Text('Marinated kale, onion, tomato and roasted garlic aioli on grilled spelt bread.',
                         style: TextStyle(
                           color: Colors.grey,
                           fontSize: 13.0,
                           fontFamily: 'Noto',
                           fontWeight: FontWeight.w500,

                         ),),

                       SizedBox(height: 8.0,),
                       Text('\$${price}',
                         style: TextStyle(
                             fontSize: 12.0,
                             color: Colors.grey,
                             fontFamily: 'Noto',
                             fontWeight: FontWeight.w700
                         ),)
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
    ],
  );
}