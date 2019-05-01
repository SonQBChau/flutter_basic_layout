import 'package:flutter/material.dart';
import 'package:flutter_basic_layout/chat_item.dart';

class ChatItemScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Basic Layout'), backgroundColor: Colors.lightGreen,),
      body: ChatItem(),
    );
  }
}