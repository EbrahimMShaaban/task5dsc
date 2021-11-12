import 'package:flutter/material.dart';
class Textfieldpage extends StatelessWidget {
  IconData icon1;
  String text;
  IconData icon2;
  bool scure;


  Textfieldpage({
    this.text,
    this.icon1,
    this.icon2,
    this.scure=false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(style: TextStyle(color: Colors.black,),
        onChanged: (String value) {
          print(value);
        },
         obscureText: scure,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon1,
            size: 25,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            icon2,
            size: 25,
            color: Colors.grey,
          ),
          labelText: text,

          labelStyle: TextStyle(fontSize: 18,color: Colors.amberAccent,
          ),
          helperText: 'required',
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.amberAccent,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}