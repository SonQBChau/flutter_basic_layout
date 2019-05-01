import 'package:flutter/material.dart';
import 'package:flutter_basic_layout/custom_theme.dart';

class CardItem extends StatelessWidget{
  final backgroundImage = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage('https://content-static.upwork.com/uploads/2014/10/01073427/profilephoto1.jpg'),
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.luminosity),
          fit: BoxFit.cover,

      ),
    ),
  );
  final onTopContent = Container(
    height: 80,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Trending this week',
          style: bigHeaderTextStyle,
        ),
        Text('The most popular restaurants in town this week',
          style: descTextStyle,
        ),
        Container(
          height: 2,
          width: 150,
          color: Colors.redAccent,
        ),
        Text('30 PLACES',
          style: footerTextStyle,
        ),
      ],
    ),
  );


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        height: 250,
        child: Stack(
          children: <Widget>[
            backgroundImage,
            Container(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: onTopContent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}