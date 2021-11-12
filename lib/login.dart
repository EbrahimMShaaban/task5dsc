import 'package:flutter/material.dart';
import 'package:task5dsc/textfield.dart';

import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150, bottom: 50),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
            Textfieldpage(
              text: 'Uesr Name',
              icon1: Icons.person_pin,
              scure: false,
            ),
            Textfieldpage(text: 'Email', icon1: Icons.mail,
              //scure: false ,
            ),
            Textfieldpage(
              text: 'Password',
              icon1: Icons.lock,
              icon2: Icons.remove_red_eye,
              scure: true,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  margin: EdgeInsets.all(50),
                  height: 50,
                  width: 190,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'CREATE  ACCOUNT',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
