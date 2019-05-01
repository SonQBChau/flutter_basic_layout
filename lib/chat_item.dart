import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget{
  final leftSection = new Container(
    child: CircleAvatar(
      backgroundColor: Colors.lightGreen,
      backgroundImage: NetworkImage("https://content-static.upwork.com/uploads/2014/10/01073427/profilephoto1.jpg"),
      radius: 24,
    ),
  );
  final middleSection = new Expanded(
    child: Container(
      padding: EdgeInsets.only(left:8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Name',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text('Hi whatsup?',
            style: TextStyle(
              color:Colors.grey,
            ),
          )

        ],
      ),
    ),
  );
  final rightSection = new Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text('9:50',
          style: TextStyle(color: Colors.lightGreen, fontSize: 12),
        ),
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 10,
          child: Text(
            '2',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ],
    ),
  );


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            leftSection,
            middleSection,
            rightSection,
          ],
        ),
      ),
    );
  }
}