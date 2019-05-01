import 'package:flutter/material.dart';
import 'package:flutter_basic_layout/card_item.dart';

class CardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(title: Text('Card Screen')),
      body: CardItem(),
    );
  }
}