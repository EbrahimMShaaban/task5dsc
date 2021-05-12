import 'package:flutter/material.dart';
import 'package:task5dsc/card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Text('Resturant Menu'),
            backgroundColor: Colors.black),
        body: ListView(
          children: [
            Cardpage('pizza', '1.jpg'),
            Cardpage('Burger', '2.jpg'),
            Cardpage('pasta', '3.jpg'),
            Cardpage('cake', '4.jpg'),
          ],
        ),
      );

  }
}
