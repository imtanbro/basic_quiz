import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      alignment: Alignment.center,
    );
  }
}

class App extends StatelessWidget {
  
  final String titlenav;
  App(this.titlenav);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
      title: Text(
        titlenav,
        style: TextStyle(
          color: Colors.yellowAccent,
          fontSize: 28,
        ),
      ),
    );
  }
}
