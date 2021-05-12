import 'package:flutter/material.dart';
import 'package:task5dsc/dropdown.dart';

class Cardpage extends StatelessWidget {
  final String txt;
  final String img;

  Cardpage(this.txt, this.img);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      shadowColor: Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      elevation: 20,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,

                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('image/$img'))),
                  width: 300,

                  //child: Image.asset('image/1.jpg',),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  txt,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 15),
            child: Dropdown(),
          )
        ],
      ),
    );
  }
}
