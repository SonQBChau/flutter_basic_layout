import 'package:flutter/material.dart';
import 'package:flutter_basic_layout/card_screen.dart';
import 'package:flutter_basic_layout/chat_item_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        'chat': (context) => ChatItemScreen(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        'card': (context) => CardScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Basic Layouts')),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              buildInkWellChat(context),
              SizedBox(
                height: 5,
              ),
              buildInkWellCard(context),
            ],
          ),
        ));
  }

  InkWell buildInkWellCard(BuildContext context) {
    return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'card');
              },
              splashColor: Colors.green,
              highlightColor: Colors.lightGreen,
              child: Container(
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.green),
                ),
                child: Text('Card'),
              ),
            );
  }

  InkWell buildInkWellChat(BuildContext context) {
    return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'chat');
              },
              splashColor: Colors.green,
              highlightColor: Colors.lightGreen,
              child: Container(
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.green),
                ),
                child: Text('Chat Item'),
              ),
            );
  }
}

